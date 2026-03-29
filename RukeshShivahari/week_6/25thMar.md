# Daily Intern Log: [2026/03/25]

### **Intern: Rukesh Shivahari**

### Week 6 Day 03: [POST, PUT, DELETE Requests & Request Configuration].

### Tasks Completed

    []  POST, PUT/PATCH, DELETE Requests : Learned how to send POST requests using Dio to create new data on the server. Practiced sending JSON body data understood how APIs accept structured payloads. Similarly, implemented PUT and PATCH requests to update existing resources. Learned the difference between PUT (full update) and PATCH (partial update) and how to pass updated fields in the request body.
    At the end practiced sending DELETE requests to remove data from the server. Understood how APIs respond after deletion and how to verify successful operations using status codes.

    [] Setting Request Headers and Query Parameters : Learned how to add custom headers such as 'Content-Type' and 'Authorization' for API communication. Explored how headers are important for authentication and data formatting. Additionally, practiced passing query parameters and dynamic path parameters in API endpoints. 

    [] Configuring Dio Instance : Configured Dio using BaseOptions including 'baseUrl', 'connectTimeout', and 'receiveTimeout'. Understood how global configuration simplifies API calls across the app.

    [] Practice Task : Completed the practice task which was collectively assigned on day 2 and day 3, where using dio a simple app was created that accomplishes the CRUD operations.


  
### Technical "Today I Learned" (TIL)

- I learned how to perform different types of HTTP operations (POST, PUT, PATCH, DELETE) using Dio and understood their real-world use cases.

- I understood how to send structured data in request bodies and how APIs process incoming data and gained knowledge about setting headers for authentication and content type, which is essential for secure API communication. Additionally, I learned how query parameters and path parameters help in building dynamic API requests.

- I learned how to configure Dio globally using BaseOptions to improve code maintainability and reduce repetition. Moreover, I got an introduction to interceptors and how they can be used to handle requests and responses in a centralized way.


- Documentation Read:
https://pub.dev/packages/dio
https://dart.dev/guides/libraries/library-tour#http-client
https://restfulapi.net/http-methods/




### Blockers and Challenges
- None

### 💬 Mentor Feedback
