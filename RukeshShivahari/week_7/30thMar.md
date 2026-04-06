l# Daily Intern Log: [2026/03/30]

### **Intern: Rukesh Shivahari**

### Week 7 Day 01: [Basic and Advance Concept of SharedPreferences].

### Tasks Completed

    [] Introduction to Shared Preferences : Researched about SharedPreferences as a lightweight local storage solution used to persist small amounts of data on the device. Understood that it is best suited for simple use cases like saving user preferences, login states, theme settings, or small configuration values. Additionally,explored how SharedPreferences works using a key-value pair system where each value is stored with a unique key. Practiced organizing and retrieving data efficiently using meaningful key names.

    [] Supported Data Types : Researched on SharedPreferences supporting basic data types such as String, int, double, bool, and List of String. Moreover, explored how to store complex objects (like user models) by converting them into JSON strings using jsonEncode and retrieving them with jsonDecode.

    [] Async Operations and Integration with Provider : Practiced using async-await to handle SharedPreferences operations since they are asynchronous. Learned how to properly initialize and await instance calls before accessing stored data. Furthermore, explored integrating SharedPreferences with state management solutions like Provider. Learned how to sync stored data with UI state and notify listeners when preferences change.

    [] Data Retention : Experimented on important and necessary data retention like theme saving (light/dark mode) using SharedPreferences, and practiced storing and managing user session data such as login tokens or flags (e.g., isLoggedIn). Additionally, implemented logic to detect first app launch using a boolean flag. Learned how to show onboarding screens only once and update the flag after initial launch.

### Technical "Today I Learned" (TIL)

- I learned how to use SharedPreferences for efficient local data persistence in Flutter applications, especially for storing lightweight user preferences and settings.

- I gained practical experience with key-value storage patterns and handling supported data types while ensuring safe data retrieval with null checks and defaults. Moreover, learned to implement the singleton pattern to ensure a single instance of SharedPreferences is used throughout the application.

- I also understood the limitations of SharedPreferences and when to avoid using it in favor of more secure or scalable storage options. Additionally, I improved my understanding of asynchronous programming using async-await while working with local storage APIs, ensuring smooth and error-free data operations.

- I also understood how to combine SharedPreferences with state management tools like Provider to keep UI and stored data in sync. Additionally, I implemented real-world features such as theme persistence, user session handling, and first-time launch detection, which are essential for building polished and user-friendly applications.


- Documentation Read:
https://pub.dev/packages/shared_preferences
https://dart.dev/codelabs/async-await
https://docs.flutter.dev/cookbook/persistence/key-value



### Blockers and Challenges
- None

### 💬 Mentor Feedback
