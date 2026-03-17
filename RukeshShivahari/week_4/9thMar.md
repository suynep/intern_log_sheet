# Daily Intern Log: [2026/03/09]

### **Intern: Rukesh Shivahari**

### Week 4 Day 01: [StatelessWidget vs StatefulWidget].

### Tasks Completed

    [] Deep dive on Widgets : Got to know about widgets and how everything in flutter are made up of widgets. Explored on the concept of Widgets being immutable and reasons behind why it was made that way. Researched on three trees(.i.e. Widget Tree, Element Tree, Render Tree) with the build and rendering processes. Furthermore, studied and experimented with two main widgets in flutter which are Stateless Widget(no states) and Stateful Widget(handles the states), so got to know about its best use cases too.

    [] Widget Rebuild : Researched on what happens on the widget rebuild and what causes it to be rebuilt, like parent widget rebuild, route changes, dependency change etc. Also studied performance considerations such as minimizing unnecessary rebuilds, using const constructors, and keeping the build method pure for better UI efficiency.

    [] BuildContext Explained : Studied on the concept of BuildContext in terms of flutter. Explored its common uses in different parts of the flutter app development. Additionally, encountered one of the intriguing ideas in context-global context and why its not recommended to be used.

    [] Project Completion : Completed the project named Product Catalog where the application has to showcase the available products with its details like name, quantity and price. It has features like sorting the products by name, quantity and price in both ascending and descending pattern. Additionally, the product lists can be filtered based on the product type and its price range. Various handy widgets were used like GridView, BottomModal, Dropdown, SearchDelegate and many more.


### Technical "Today I Learned" (TIL)

    - I learned that as widget is immutable, it is either  a new widget is created or widget is rebuilt. Learnt why its marked as immutable, cause its easy to compare between old and new widgets so, Flutter updates only the changed parts. Got knowledge on what happens at each stages of Widget Tree, Element Tree and Render Tree.

    - I learned that StatelessWidget in Flutter is an immutable widget used for UI elements that do not change and only display data through the build() method using BuildContext. Understood that it cannot manage internal state or call setState(), making it suitable for simple and reusable presentation components. Explored how StatefulWidget separates immutable widget configuration from mutable state stored in a State class. Also studied the full lifecycle of the State object including methods like initState(), didChangeDependencies(), build(), didUpdateWidget(), deactivate(), and dispose() for managing UI updates and resource cleanup.

    - Acquired knowledge on the purpose of BuildContext in Flutter and how it represents a widget’s position within the widget tree. Learned about common uses of context such as accessing navigation, themes, screen information, and UI messaging through methods like Navigator.of(context), Theme.of(context), MediaQuery.of(context), and ScaffoldMessenger.of(context). As global BuildContext breaks the widget tree structure and can point to the wrong location in the tree, leading to navigation, theme, or UI lookup errors; therefore BuildContext should always be used from the current widget’s build scope.

- Documentation Read:
   https://mailharshkhatri.medium.com/understanding-the-three-trees-in-flutter-widget-element-and-render-trees-d31e337d220b

   https://api.flutter.dev/flutter/widgets/BuildContext-class.html

   https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html

   https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html


### Work Evidence
- The product catalog project that was assigned, is in this [url](https://github.com/ShivahariRukesh/intern-projects/tree/main/product_catalog).


### Blockers and Challenges
- None

### 💬 Mentor Feedback
