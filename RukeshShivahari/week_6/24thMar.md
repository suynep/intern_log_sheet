# Daily Intern Log: [2026/03/24]

### **Intern: Rukesh Shivahari**

### Week 6 Day 02: [Dio Package Setup & Basic GET Requests].

### Tasks Completed

    [] Introduction to Dio : Studied what Dio package is and why it is preferred over the default http package in Flutter. Learned that Dio provides advanced features like interceptors, global configuration, FormData, request cancellation, timeout, and easier error handling. Moreover, added Dio dependency to pubspec.yaml and ran `flutter pub get` to install it. Learned about package versioning and maintaining dependencies.

    [] Making Basic GET Requests : Implemented simple GET requests using Dio to fetch data from public APIs like JSONPlaceholder. Learned to pass query parameters, handle dynamic endpoints, and print responses in the console.

    [] Response Handling : Researched about checking the status code, parse JSON responses, and handle errors using try-catch blocks. Explored Dio’s Response object and its properties like `data`, `statusCode`, and `headers`.

    [] Understanding Future and async/await : Practiced using Future, async, and await for asynchronous API calls. Understood that Dio returns a Future<Response> which can be awaited to get the response data.

  
### Technical "Today I Learned" (TIL)

- I learned that Dio simplifies networking in Flutter by providing built-in support for interceptors, logging, timeout, and error handling, making it more robust than the basic http package.

- I understood how to handle asynchronous calls using async/await and Futures, which prevents blocking the UI thread while waiting for API responses.

- I gained practical experience in configuring Dio instances, sending GET requests, and parsing JSON responses efficiently.

- I learned how to handle errors gracefully using try-catch with DioError, and how to check status codes before using response data.



- Documentation Read:
https://dart.dev/libraries/async/async-await
https://pub.dev/packages/dio
https://ms3byoussef.medium.com/deep-dive-into-popular-flutter-packages-dio-09e9aea86df8




### Blockers and Challenges
- None

### 💬 Mentor Feedback
