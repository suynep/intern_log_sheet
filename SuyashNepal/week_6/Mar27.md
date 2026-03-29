# Daily Intern Log: Friday, March 27, 2025
### **Intern: Suyash Nepal**
## Focus: Error Handling, Interceptors & `champagne_cinema` Integration
 
### Tasks Completed
- [x] DioException Handling: Wrapped all API calls in `try-catch`, handling `connectionTimeout`, `receiveTimeout`, `connectionError`, `badResponse`, and `unknown` types explicitly.
- [x] Custom `ApiException`: Created a custom `ApiException` class carrying a user-friendly message and optional status code, decoupling transport errors from the UI layer.
- [x] Logging Interceptor: Added an `InterceptorsWrapper` to the Dio instance logging method, path, status code, and error message for every request cycle.
- [x] Auth Token Interceptor: Added `onRequest` handler that injects the TMDB `Authorization: Bearer` header automatically, removing it from individual call sites.
- [x] champagne\_cinema integration: Applied the full error-handling pattern to the existing `TMDBApiService` — popular movies, search, and movie detail endpoints now surface typed `ApiException` errors through the `Result<T>` sealed class to the ViewModel.
- [x] Loading States: ViewModel exposes `isLoading`, `data`, and `errorMessage` fields; UI shows `CircularProgressIndicator` during fetch and a `SnackBar` on error.
 
### Technical "Today I Learned" (TIL)
 
- **Concept:** Interceptors as a cross-cutting concern
- **Key Takeaway:** Interceptors let you handle concerns that apply to every request (auth tokens, logging, retry logic) in one place rather than scattering them across every service method. The `onRequest` / `onResponse` / `onError` triple maps cleanly onto middleware patterns. One gotcha: calling `handler.next()` vs `handler.resolve()` vs `handler.reject()` has different effects — `resolve()` short-circuits the response chain and skips remaining interceptors, which is useful for cache-hit scenarios but easy to misuse.
- **Code:**
```dart
// Logging + Auth interceptor added to TMDBApiService
_dio.interceptors.add(
  InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['Authorization'] = 'Bearer ${AppConstants.tmdbAccessToken}';
      debugPrint('REQ [${options.method}] ${options.path}');
      handler.next(options);
    },
    onResponse: (response, handler) {
      debugPrint('RES [${response.statusCode}] ${response.requestOptions.path}');
      handler.next(response);
    },
    onError: (DioException e, handler) {
      debugPrint('ERR [${e.response?.statusCode}] ${e.message}');
      handler.next(e);
    },
  ),
);
 
// Custom exception
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  const ApiException(this.message, {this.statusCode});
}
 
// DioException mapping helper
ApiException mapDioException(DioException e) {
  return switch (e.type) {
    DioExceptionType.connectionTimeout => const ApiException('Connection timed out'),
    DioExceptionType.receiveTimeout    => const ApiException('Server took too long to respond'),
    DioExceptionType.connectionError   => const ApiException('No internet connection'),
    DioExceptionType.badResponse       => ApiException(
        'Server error',
        statusCode: e.response?.statusCode,
      ),
    _ => ApiException('Unexpected error: ${e.message}'),
  };
}
```
 
### Work Evidence
- Documentation Read: [Dio Interceptors — pub.dev](https://pub.dev/packages/dio#interceptors)
- Documentation Read: [TMDB API Docs](https://developer.themoviedb.org/docs)
 
### 💬 Mentor Feedback
