# Daily Intern Log: [2026/03/04]

### **Intern: Rukesh Shivahari**

### Week 3 Day 02: [Flutter UI Widgets].

### Tasks Completed

    [] Flutter Fundamentals : Researched on flutter basics, its use cases, how it works and other fundamental things. Got to know about its key aspects like single codebase, hot reload, performance, ui components and many more. Researched on why it is called widget based ui system, its widget tree concept, differences between stateless widget and stateful widget. Additionally, got acquainted with application level container like MaterialApp, Cupertino App and for screen level layout structure,  Scaffold. Got to know how a simple 'build()' method in flutter is used to return new tree of widgets.

    [] Basic Widgets : Explored and implemented practical examples of fundamental Flutter widgets such as Text (for styled text display), Icon (for material icons), Image (supporting network, asset, and file sources), Container (a versatile layout and styling widget), SizedBox (for spacing and fixed dimensions), and Divider and VerticalDivider (for creating visual separation in layouts).

    [] App Structure Widgets : Studied on app structure widgets in Flutter that are used to organize the layout and navigation of an application. They provide the basic framework that helps developers structure screens, add navigation elements, and maintain a consistent user interface across the app. During my research, I found that these widgets are essential for building well-structured and user-friendly mobile applications.

    [] Layout Widgets (Single Child & Multi Child) : Researched on single-child layout widgets in Flutter and worked it out practically to understand their unique layout behaviors. Got to know about Container for managing padding, margin, decoration, and constraints; Center for positioning widgets at the center; Align for placing widgets at specific positions; Padding for adding space around elements; SizedBox for defining fixed dimensions; and FittedBox for scaling and positioning child widgets effectively within available space. 
    Furthermore, explored Flutter’s multi-child layout widgets to gain a deeper understanding of UI structuring and responsive design. Through hands-on examples, experimented with Row and Column for directional layouts, ListView and GridView for scrollable structures, and got tto know how MainAxisAlignment and CrossAxisAlignment control spacing and alignment within layouts.
    Additionally, researched on flexible layouts like Expanded, Flexible and Spacer for the auto flexibility of widgets inside the given available space.

    [] Display Widgets : Studied Flutter’s display widgets to build visually appealing and interactive UI components. Practiced some of the display widgets like Card for material design layouts, ListTile for structured list items, Chip for compact data representation, CircleAvatar for circular images or icons, Badge for notification indicators, and Tooltip to enhance user guidance and interactivity.

    [] Dialog and Overlay Widgets : Studied on how Dialog and overlay widgets in Flutter are used to display information or actions on top of the current screen without navigating to a new page. Got  to know that these widgets help improve user experience by providing feedback or collecting user input.   


### Technical "Today I Learned" (TIL)

    - I learned about the purpose behind Flutter’s creation and its significance in modern development. I also studied its core architecture, which consists of three main layers: the Framework (Dart), the Engine (C/C++), and the Embedder (platform-specific layer). Gradually, I acquired knowledge about rendering UI efficiently in flutter by creating and managing three separate tree structures: Element Tree, Widget Tree and Render Object Tree.
    About this powerful method in Dart called as "build()", I learned that it describes on how the widget looks, it returns another widget and runs whenever UI needs updating.
    Furthermore, when differentiating between hot reload and hot restart I learned how hot reload retains an app state, its immediate changes and why it's commonly used during UI changes while in case of hot restart when the changes are not seen from the hot reload then hot restart is an alternative but comparatively slow than hot reload and clears the app state.

    - I got hands on experience with these basic widgets by practicing it in flutter development environment. I acquired knowledge about Flutter that the widgets are the fundamental building blocks of the user interface, with virtually everything, from text and buttons to layout structures, being a widget. They are arranged in a hierarchical widget tree to define the UI's structure and appearance.

    - I studied and learned about the primary concept of Layout Widgets that take single child via their child property. They act as wrappers, applying specific layout rules or visual effects to the wrapped content. Some of the examples of such widgets are Container, FittedBox, Align, Padding, SizedBox and many more. While about multi child layout widgets which is fundamental for arranging and organizing multiple UI components within a single parent container. These widgets take a children property (a list of widgets) instead of a single child. Widgets like Column, Row, Wrap, GridView, ListView are some of the multi child layout widgets.

    - I got to know that a Display Widget isn’t a single widget but rather a category of widgets used to show information on the screen. These widgets are primarily concerned with presenting text, images, icons, or other visual elements to the user. They don’t usually handle user input directly (like buttons or text fields), but instead focus on rendering content.

    - I experimented with various Input Widgets and Button Widgets and learned that Input widgets are used to collect data or information from the user. Some of the input widgets that I used are TextField, which is used to enter text; Checkbox, which is used to select or deselect an option; Radio, which is used to select one option from a group; Switch, which is used to toggle between on and off states; Slider, which is used to select a value within a range. Similarly, different button widgets like ElevatedButton, TextButton, OutlinedButton, IconButton and FloatingActionButton were explored and implemented.

    - In case of dialog and overlay widgets I learned about such useful widgets like AlertDialog, which is commonly used when the app needs the user to confirm an action, like deleting data or exiting the application; SimpleDialog, which is used to present a list of options for the user to choose from; SnackBar, which is used to show short temporary messages at the bottom of the screen. It automatically disappears after a few seconds and does not interrupt the user’s workflow; and many more.

    - I acquired knowledge about how app structure widgets in Flutter play a major role in organizing the layout and navigation of mobile applications. Widgets like Scaffold, AppBar, BottomNavigationBar, Drawer, TabBar, and FloatingActionButton help developers create structured, intuitive, and easy-to-use app interfaces.


- Documentation Read:
    https://docs.flutter.dev/ui
    https://docs.flutter.dev/ui/layout
    https://docs.flutter.dev/ui/widgets
    https://docs.flutter.dev/ui/widgets/material



### Blockers and Challenges
- None

### 💬 Mentor Feedback
