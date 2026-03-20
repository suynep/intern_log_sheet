# Daily Intern Log: [2026/03/19]

### **Intern: Rukesh Shivahari**

### Week 5 Day 04: [Provider State Management].

### Tasks Completed

    [] Introduction to Provider package : Studied about provider package as its one of the most widely used state management solutions in flutter. It's built on top of Flutter's inherited widgets and got to know how it makes state management simpler, more scalable and easier to understand. 

    [] Performance Optimization in Provider : Researched on different performance optimization in Provider using Consumer and Selector with context.read and Provider.to(context,listen:false). Practiced updating states in Flutter using these classes and methods. Tested how different widgets rebuild when state changes.

    [] Understanding Data Flow in Provider : Explored and understood how data flows in Provider. Like how state is created and that state is provided to the root of the app, correspondingly those states are consumed by widgets and when state changes through notifyListeners, widgets listening to that state automatically are rebuilt.

    [] Implemented Basic Counter App with Provider : Built a simple flutter todo app where state is managed using ChangeNotifier. Instead of using setState, used Provider to manage and update UI
  


### Technical "Today I Learned" (TIL)

    - I learned about ChangeNotifier, which allows reactive UI updates, notifyListeners triggers rebuilds efficiently, MultiProvider organize multiple states cleanly and Consumer updates UI only where needed while Selector only rebuilds those based on the entities it filters. Furthermore, through provider I got to know about separation of UI and logic improves code readability and scalability.

    - I understood pitfalls like overusing Provider.of in build methods or not disposing controllers. Provider encourages clean, maintainable patterns that prevent memory leaks and unnecessary rebuilds.

    - I learned how Provider allows scoping state to a specific part of the widget tree. This helps limit state to only the widgets that need it, reducing memory usage and avoiding unintended rebuilds.


- Documentation Read:
https://docs.flutter.dev/data-and-backend/state-mgmt/simple
https://pub.dev/documentation/provider/latest/provider/Selector-class.html
https://pub.dev/packages/provider



### Blockers and Challenges
- None

### 💬 Mentor Feedback
