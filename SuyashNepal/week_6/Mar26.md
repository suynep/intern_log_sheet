# Daily Intern Log: Thursday, March 26, 2025
### **Intern: Suyash Nepal**
## Focus: JSON Parsing & Data Models
 
### Tasks Completed
- [x] Model Classes: Created `Post` and `User` model classes with typed fields.
- [x] `fromJson` Factory: Implemented `factory Post.fromJson(Map<String, dynamic> json)` for deserialisation.
- [x] `toJson` Method: Implemented `toJson()` for serialisation (used in POST/PUT bodies).
- [x] Nested JSON: Handled nested objects (e.g., `address` inside a `User` response from JSONPlaceholder) by composing model classes.
- [x] JSON Arrays: Parsed list responses using `.map((e) => Post.fromJson(e)).toList()`.
- [x] Null Safety: Added null-aware operators (`??`) for optional fields to prevent runtime crashes on partial API responses.
 
### Technical "Today I Learned" (TIL)
 
- **Concept:** Manual `fromJson` vs code generation (`json_serializable`)
- **Key Takeaway:** Writing `fromJson` manually is valuable for understanding exactly what's happening during deserialisation and for small models. But for large, deeply nested models, `json_serializable` + `build_runner` eliminates human error and keeps models in sync with the JSON schema automatically. The trade-off is build complexity. For `champagne_cinema`'s TMDB models, manual `fromJson` is fine since the shape is known and stable.
- **Code:**
```dart
class Post {
  final int id;
  final int userId;
  final String title;
  final String body;
 
  const Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
 
  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'] as int,
        userId: json['userId'] as int,
        title: json['title'] as String? ?? '',
        body: json['body'] as String? ?? '',
      );
 
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'title': title,
        'body': body,
      };
}
 
// Parsing a list response
final posts = (data as List).map((e) => Post.fromJson(e)).toList();
```
 
### Work Evidence
- Documentation Read: [JSON and serialization — Flutter docs](https://docs.flutter.dev/data-and-backend/json)
- Tool Used: [QuickType](https://quicktype.io/) — used to cross-check generated model against manual implementation.
 
### 💬 Mentor Feedback
