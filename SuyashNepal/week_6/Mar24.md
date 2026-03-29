# Daily Intern Log: Tuesday, March 24, 2025
### **Intern: Suyash Nepal**
## Focus: Dio Package Setup & Basic GET Requests
 
### Tasks Completed
- [x] Dio Setup: Added `dio: ^5.4.0` to `pubspec.yaml` and ran `flutter pub get`.
- [x] API Service Class: Created `lib/services/api_service.dart` with a singleton `Dio` instance and a `fetchPosts()` method targeting JSONPlaceholder.
- [x] GET Request: Implemented `async/await` GET request to `/posts`, parsed the response list, and displayed titles in a `ListView.builder`.
- [x] Response Handling: Printed `response.statusCode` and `response.data` to verify structure before model mapping.
- [x] Async/Await Review: Traced the `Future` chain from `dio.get()` through `async` functions up to `FutureBuilder` in the widget layer.
 
### Technical "Today I Learned" (TIL)
 
- **Concept:** Why Dio over the `http` package
- **Key Takeaway:** Dio provides built-in support for `BaseOptions` (base URL, timeouts, default headers), interceptors, `FormData`, automatic JSON decoding, and typed `DioException`: all things you'd have to wire up manually with the `http` package. For any project beyond a trivial one-off request, Dio removes a lot of boilerplate.
- **Code:**
```dart
class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();
 
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  ));
 
  Future<List<dynamic>> fetchPosts() async {
    final response = await _dio.get('/posts');
    return response.data as List<dynamic>;
  }
}
```
 
### Work Evidence
- Documentation Read: [Dio package in pub.dev](https://pub.dev/packages/dio)
- Documentation Read: [Flutter async/await in dart.dev](https://dart.dev/codelabs/async-await)
 
### 💬 Mentor Feedback
