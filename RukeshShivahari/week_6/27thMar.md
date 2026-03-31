l# Daily Intern Log: [2026/03/27]

### **Intern: Rukesh Shivahari**

### Week 6 Day 05: [Error Handling & Exception Management].

### Tasks Completed

[] Types of Errors in API Calls : Learned about different categories of errors that can occur during API communication such as network errors (no internet), server errors (5xx), client errors (4xx), and data parsing issues. Understood how identifying error types helps in handling them effectively. So, learned how to inspect HTTP response status codes to determine success or failure of API calls. Practiced handling specific codes like 404 (not found), 401 (unauthorized), and 500 (server error).

[] Try-Catch Blocks : Practiced implementing try-catch blocks in Dart to gracefully handle runtime exceptions. Learned how to use multiple catch clauses to handle specific exceptions like DioException separately from general exceptions.

[] Handling DioException Types : Explored various DioException types such as connectionTimeout, sendTimeout, receiveTimeout, badResponse, cancel, connectionError, and unknown. Implemented conditional checks based on exception type to provide precise error handling logic.

[] Custom Exception Classes : Created a reusable ApiException class to standardize error handling across the application. Learned how custom exceptions improve maintainability and debugging, focused on converting technical errors into meaningful messages for users, improving overall user experience. Furthermore, even learned about retry mechanism for the processes that encountered error and correspondingly show user friendly messages too.



### Technical "Today I Learned" (TIL)

- I learned how to build robust error handling systems in Dart applications using structured try-catch blocks and DioException handling. Moreover, I understood how different exception types help in identifying the root cause of failures.

- I also gained experience in designing custom exception classes like ApiException to centralize error management. Additionally, I learned how to improve user experience by displaying clear and helpful error messages instead of raw technical errors.

- I even explored implementing retry mechanisms and handling offline scenarios, which are essential for building reliable and production-ready applications.



- Documentation Read:
https://pub.dev/packages/dio
https://dart.dev/language/error-handling
https://httpstatuses.com/




### Blockers and Challenges
- None

### 💬 Mentor Feedback
