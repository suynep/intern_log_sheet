# Daily Intern Log: Monday, March 30, 2025
### **Intern: Suyash Nepal**
## Focus: SharedPreferences Basics

### Tasks Completed
- [x] SharedPreferences Overview: Studied what SharedPreferences is, its key-value storage pattern, supported types (String, int, double, bool, List\<String\>), and when NOT to use it (large datasets, sensitive credentials, structured relational data).
- [x] Install & Init: Added `shared_preferences` to `pubspec.yaml`, initialised an instance, and tested basic read/write operations in isolation before wiring into the app.
- [x] Store & Retrieve: Implemented `setString`, `setBool`, `setInt` calls and their corresponding `getString`, `getBool`, `getInt` getters; verified round-trip persistence across hot restarts.
- [x] Null Safety & Defaults: Explored behaviour when a key doesn't exist yet — getters return `null`, so practiced providing fallback defaults with `?? defaultValue`.
- [x] Clear Operations: Tested both `remove(key)` for targeted deletion and `clear()` for wiping all stored values; noted that `clear()` is destructive across the entire preference file.

### Technical "Today I Learned" (TIL)

- **Concept:** SharedPreferences is synchronous to read but asynchronous to write
- **Key Takeaway:** `SharedPreferences.getInstance()` is `async`, but once you have the instance, all getters (`getString`, `getBool`, etc.) are synchronous — they read from an in-memory cache that was loaded at init time. The setters (`setString`, etc.) return a `Future<bool>` because they flush to disk asynchronously. This means you should `await` the instance once (at app startup or in a service constructor) and keep it alive, rather than calling `getInstance()` on every read: each call does a platform channel round-trip to check if the cache is warm.

- **Code:**
```dart
// Correct pattern: await once, reuse the instance
final prefs = await SharedPreferences.getInstance();

// Writing (async — returns Future<bool>)
await prefs.setBool('isDarkMode', true);
await prefs.setString('language', 'en');

// Reading (sync — returns from in-memory cache)
final isDark = prefs.getBool('isDarkMode') ?? false;
final lang   = prefs.getString('language') ?? 'en';

// Targeted removal vs full wipe
await prefs.remove('language');   // remove one key
await prefs.clear();              // remove everything

// Key existence check
final hasPin = prefs.containsKey('appPin');
```

### Work Evidence
- Documentation Read: [shared_preferences — pub.dev](https://pub.dev/packages/shared_preferences)
- Documentation Read: [Persist data with SharedPreferences — Flutter docs](https://docs.flutter.dev/cookbook/persistence/key-value)

### 💬 Mentor Feedback
*(To be filled by Mentor):*

