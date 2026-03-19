# Daily Intern Log: [2026/03/18]

### **Intern: Rukesh Shivahari**

### Week 5 Day 03: [App Structure and Code Organization & Comment and Documentation Standards].

### Tasks Completed

    [] Explored Standard Flutter Project Structure : Studied on how a typical Flutter project is organized and structured inside the lib/ directory, including subfolders like models/, providers/, screens/, widgets/ and many more. Based on the app architecture, MVC or MVVM explored their standards on directory path. Furthermore, researched recommended practices from official Flutter documentation and developer communities which included how to name files, structure reusable components.

    [] Refactored Project Fitness App : Based on the MVC pattern, refactored and changed the fitness application. Before refactoring the project every files and folders were separated and unorganized which made it hard to read and write the code. It was even challenging to explain the project details properly. But after refactoring the project using MVC architecture, the business and data modules were handled in the Model directory(for data), Controller directory(for business logic) and the ui elements were organized in the View directory. Furthermore, screens and widgets were properly structured inside of the View directory too. As there will be many repeated widgets, it was well kept inside of the shared_widget directory too. Any extras or helper functionalities were aimed to be store inside utils folder.

    [] Studied Dart Documentation Comments : Studied how dart uses triple forward slash (///) for documentation comments to describe classes, constructors, methods, and its parameters, which I got to know that this helps tools like DartDoc generate readable API documentation automatically. 

    [] Reviewed Best Practices for Code Comments : Reviewed guidelines on when and how to comment code effectively focusing on clarity, avoiding redundant comments, and explaining "why" rather than "what", which improves long term code maintainability. 


### Technical "Today I Learned" (TIL)

    - I understood that a well organized code and application structure makes it easier to scale apps and reuse components. For example, placing shared UI elements in the widgets/ folder avoids duplication and simplifies future development. Moreover, I learned that dividing code into folders such as models (data), screens (UI pages), and widgets (reusable components) improves readability, maintainability, and teamwork in larger projects.

    - I learned that using /// above functions, classes, constructors makes the code self-explanatory for developers, even enabling auto generated documentation and improving team collaboration with documentation comment references using square brackets"[ ]". Additionally, I got to know that meaningful comments enhance readability and maintainability after trying it out myself in some of the projects. 


- Documentation Read:

https://docs.flutter.dev/app-architecture
https://medium.com/@vortj/leveling-up-your-flutter-project-structure-fcb7099a3930
https://dart.dev/language/comments
https://dart.dev/tools/doc-comments/references



### Blockers and Challenges
- None

### 💬 Mentor Feedback
