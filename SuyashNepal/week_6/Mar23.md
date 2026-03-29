# Daily Intern Log: Monday, March 23, 2025
### **Intern: Suyash Nepal**
## Focus: REST API Fundamentals & HTTP Methods
 
### Tasks Completed
- [x] REST API Concepts: Studied RESTful architecture principles: statelessness, uniform interface, resource-based URLs, and the client-server model.
- [x] HTTP Methods: Reviewed GET, POST, PUT, PATCH, and DELETE and their semantics (idempotency, safe methods, etc.).
- [x] HTTP Status Codes: Documented key status codes — 200 OK, 201 Created, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error.
- [x] JSON Structure: Reviewed JSON syntax, nesting, arrays, and how it maps to Dart `Map<String, dynamic>`.
- [x] API Exploration: Used Postman to explore JSONPlaceholder endpoints — tested GET `/posts`, `/users`, POST `/posts`, PUT `/posts/1`, DELETE `/posts/1`.
 
### Technical "Today I Learned" (TIL)
 
- **Concept:** HTTP method semantics: safe vs. idempotent
- **Key Takeaway:** `GET` is both safe (no side effects) and idempotent (same result every call). `PUT` is idempotent but not safe. `POST` is neither: calling it twice creates two resources. This distinction matters when designing retry logic: retrying a `POST` naively can cause duplicate data.
- **Code:**
```
# JSONPlaceholder endpoints explored
GET    https://jsonplaceholder.typicode.com/posts
GET    https://jsonplaceholder.typicode.com/posts/1
POST   https://jsonplaceholder.typicode.com/posts       body: { title, body, userId }
PUT    https://jsonplaceholder.typicode.com/posts/1     body: full object
DELETE https://jsonplaceholder.typicode.com/posts/1
```
 
### Work Evidence
- Documentation Read: [RESTful API Tutorial](https://restfulapi.net/)
- Documentation Read: [HTTP Status Codes — MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
- Documentation Read: [JSON.org](https://www.json.org/)
 
### 💬 Mentor Feedback
