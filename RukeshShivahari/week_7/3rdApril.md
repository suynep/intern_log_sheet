# Daily Intern Log: [2026/04/03]

### **Intern: Rukesh Shivahari**

### Week 7 Day 05: [Integration & Architecture].

### Tasks Completed

[] SharedPreferences vs SQFlite : Explored on how to choose between SharedPreferences and sqflite based on use cases. Understood that SharedPreferences is ideal for lightweight key-value data (e.g., settings, flags), while SQFlite is better suited for structured, relational, and large datasets.

[] Repository Pattern : Explored the Repository pattern to abstract data sources from business logic. Practiced structuring code so that data can come from APIs, local databases, or cache without affecting the rest of the application, improving scalability and testability.

[] Offline-First Architecture : Learned how to design applications that prioritize local data first and sync with APIs when connectivity is available. Practiced building apps that remain functional even without internet access. So, even implemented caching strategies by storing API responses in sqflite or SharedPreferences. Learned how caching reduces network calls, improves performance, and enhances user experience.

[] Error Handling Strategies and Performance Optimization : Strengthened error handling by combining API error handling with local storage fallbacks. Learned how to show cached data when API calls fail and provide meaningful feedback to users.
Additionally, researched techniques like lazy loading, efficient queries, minimizing database calls, and using batch operations in sqflite. Learned how to optimize app performance while working with both local and remote data sources.

[] Completed the project called "Offline-First Task Manager with API sync" as per the requirements. 



### Technical "Today I Learned" (TIL)

- I learned how to effectively combine SharedPreferences and sqflite to build scalable and efficient data storage architectures in Flutter applications. Moreover, I gained a strong understanding of the Repository pattern, which helps in separating concerns and making the codebase more maintainable and testable.

- I also explored real-world concepts like caching and offline-first architecture, which are critical for building reliable and user-friendly apps. Furthermore, I improved my ability to handle errors gracefully and optimize performance when dealing with both API and local data sources.



Documentation Read:
https://docs.flutter.dev/app-architecture/design-patterns/offline-first
https://docs.flutter.dev/app-architecture
https://pub.dev/packages/shared_preferences
https://medium.com/@jusuftopic/
offline-first-architecture-designing-for-reality-not-just-the-cloud-e5fd18e50a79





### Blockers and Challenges
- None

### 💬 Mentor Feedback
