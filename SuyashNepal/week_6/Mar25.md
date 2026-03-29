# Daily Intern Log: Wednesday, March 25, 2025
### **Intern: Suyash Nepal**
## Focus: POST, PUT, DELETE Requests & Request Configuration
 
### Tasks Completed
- [x] POST Request: Implemented `createPost()` sending a JSON body to `/posts` and verified 201 Created response.
- [x] PUT Request: Implemented `updatePost()` with a full replacement body to `/posts/{id}`, verified idempotent behaviour.
- [x] DELETE Request: Implemented `deletePost()` targeting `/posts/{id}`, confirmed 200 response from JSONPlaceholder.
- [x] BaseOptions Config: Configured `baseUrl`, `connectTimeout`, `receiveTimeout`, and default `Content-Type: application/json` header on the shared `Dio` instance.
- [x] Query & Path Parameters: Practiced passing query params via `queryParameters` map and path params via string interpolation in the endpoint string.
 
### Technical "Today I Learned" (TIL)
 
- **Concept:** `BaseOptions` vs per-request `Options` in Dio
- **Key Takeaway:** `BaseOptions` set on the `Dio` constructor apply to every request (base URL, timeouts, default headers). Per-request `Options()` can override them for a single call: useful for endpoints that need a different `Content-Type` or a longer timeout. Knowing which layer to configure avoids duplicating header logic across every method.
- **Code:**
```dart
// POST
Future<Map<String, dynamic>> createPost(Map<String, dynamic> body) async {
  final response = await _dio.post('/posts', data: body);
  return response.data;
}
 
// PUT
Future<Map<String, dynamic>> updatePost(int id, Map<String, dynamic> body) async {
  final response = await _dio.put('/posts/$id', data: body);
  return response.data;
}
 
// DELETE
Future<void> deletePost(int id) async {
  await _dio.delete('/posts/$id');
}
 
// Query parameters example
Future<List<dynamic>> fetchPostsByUser(int userId) async {
  final response = await _dio.get(
    '/posts',
    queryParameters: {'userId': userId},
  );
  return response.data;
}
```
 
### Work Evidence
- Documentation Read: [Dio README in Request Options](https://pub.dev/packages/dio#request-options)
 
### 💬 Mentor Feedback
