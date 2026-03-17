# Daily Intern Log: [2026/03/13]
### **Intern: Aayush**
### Week 4 Day 04: [Navigation & Started Week 4 Project]

---

### Tasks Completed

    [] Navigation Fundamentals - Basic Navigation (4.8) : Studied and explored fundamental navigation in Flutter using Navigator.of(context).push() for forward navigation and Navigator.of(context).pop() for going backward. Learned how MaterialPageRoute handles screen transitions, how to pass data between screens through constructors, and how to receive results when popping back to a previous screen.

    [] Named Routes (4.9) : Researched named routes in Flutter including how to define routes inside MaterialApp, setting the initialRoute property, and navigating using Navigator.pushNamed(). Also explored RouteSettings for passing arguments, onGenerateRoute for handling dynamic routes, and onUnknownRoute as a fallback for undefined routes.

    [] Route Management (4.10) : Explored advanced route management techniques such as Navigator.pushReplacementNamed() to replace the current screen and Navigator.pushNamedAndRemoveUntil() to clear the navigation history. Studied a practical login flow example, and learned about canPop() to check if navigation can go back and maybePop() for safe popping.

    [] Back Button & WillPopScope (4.11) : Researched the WillPopScope widget which allows intercepting the device back button. Studied the onWillPop callback to define custom back button behavior, preventing unwanted navigation, and implementing confirmation dialogs before a user leaves a screen.

    [] AppBar and Navigation Integration (4.12) : Explored how navigation integrates with AppBar, including leading back button behavior, custom leading widgets, and setting titles. Also studied AppBar styling options such as backgroundColor and elevation, adding a bottom navigation bar inside AppBar, and integrating a SearchBar within AppBar.

    [] Started Week 4 Project - Restaurant Booking App : Began working on the intern project which involves building a restaurant listing and reservation application. The project requires 3 to 4 screens including a Restaurants List, Restaurant Detail, Booking Form, and My Bookings screen. Started setting up the project structure and initial screens.

---

### Technical "Today I Learned" (TIL)

    - I learned how Flutter's navigation system works using the Navigator widget. Understanding push and pop helped me see how Flutter manages a stack of screens, where each new screen is pushed on top and popped off when going back. This forms the foundation of multi screen applications.

    - I also learned the difference between direct navigation and named routes. Named routes make the codebase cleaner and easier to manage, especially in larger applications where many screens need to be navigated between. Using onGenerateRoute also gives more control over how routes are resolved dynamically.

    - Another important learning was advanced route management techniques like pushReplacementNamed and pushNamedAndRemoveUntil. These are especially useful in authentication flows where you do not want users to navigate back to the login screen after successfully logging in.

    - I learned how WillPopScope gives developers control over the back button, which is important for preventing accidental navigation away from forms or important screens. Combining it with a confirmation dialog improves the overall user experience.

    - Finally, I started the Week 4 project and got a clearer understanding of how to structure a multi screen Flutter app with real functionality like form handling, date pickers, and navigation flows between screens.

---

- Documentation Read:
https://api.flutter.dev/flutter/widgets/Navigator-class.html
https://docs.flutter.dev/ui/navigation
https://docs.flutter.dev/cookbook/navigation/navigation-basics
https://docs.flutter.dev/cookbook/navigation/named-routes
https://api.flutter.dev/flutter/widgets/WillPopScope-class.html

---

### Blockers and Challenges
- None

---

### 💬 Mentor Feedback