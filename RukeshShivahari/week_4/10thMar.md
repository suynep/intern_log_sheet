# Daily Intern Log: [2026/03/10]

### **Intern: Rukesh Shivahari**

### Week 4 Day 02: [Container Widgets & Layout System].

### Tasks Completed

    [] Core Container Widget : During the study of Flutter’s container and layout system, the first focus was on the Container widget, which acts as a versatile box model similar to CSS containers. It can control layout through properties like width, height, and constraints, while visual styling can be applied using decoration. Furthermore got to know about a intriguing concept of this container, which was the transform property, which allows rotation, scaling, and translation using matrices—making it possible to create simple animations or rotated UI elements without needing complex widgets.

    [] Row and Column : Studied was Row and Column, which are based on Flutter’s Flex layout system. They arrange children along a main axis and a cross axis, and alignment can be controlled through mainAxisAlignment and crossAxisAlignment. At past, in week 3; Expanded and Flexible were introduced on surface level but now got to experiment and got to know its best use cases.

    [] Stack and Positioned : Explored Stack and Positioned, which allow widgets to overlap each other. This system is useful for UI designs such as profile images with badges or floating labels. The order of children in a Stack determines their z-index layering. The research also revealed that StackFit controls whether children expand to fill space (tight) or keep their natural size (loose), and clipBehavior manages overflow rendering.

    [] Scrollable Layouts and Advanced container : Researched on  scrollable layouts and advanced container utilities such as ListView, GridView, SingleChildScrollView, CustomScrollView, Wrap, AspectRatio and many more. Furthermore, widgets like Visibility, Offstage, and Spacer were also explored, showing how Flutter provides multiple ways to control layout behavior without manual calculations.


### Technical "Today I Learned" (TIL)

    - I learned that Flutter layout is based on constraints flowing down and sizes flowing up, which means each widget decides its size based on the constraints provided by its parent. For example, a Container can define its size or rely on its child to determine the dimensions. Using padding and margin helps control spacing around and inside widgets, similar to web development.

    - I also understood how Row and Column manage alignment and spacing. The main axis represents the direction of layout (horizontal for Row, vertical for Column), while the cross axis is perpendicular to it. For example, using mainAxisAlignment: MainAxisAlignment.spaceBetween distributes widgets evenly across available space. Additionally, widgets like Expanded allow elements to take proportional space, such as a layout where one widget takes twice the width of another using flex: 2 vs flex: 1.

    - Even acquired knowledge about layering using Stack and Positioned which allows creating more complex UI designs. For example, a profile avatar can have a notification badge placed on the corner using position. Unlike Row and Column, Stack does not force linear placement; instead, widgets can overlap and be aligned relative to the stack’s boundaries.

    - Additionally, I learned how scrollable layouts and responsive containers improve user experience. Widgets like ListView.builder() are crucial when displaying long lists because they create items only when needed, saving memory and improving performance. Similarly, Wrap is useful when elements need to automatically move to the next line (like tags or chips). Widgets such as AspectRatio help maintain consistent proportions for media content, while Spacer provides flexible empty space within layouts, making UI design cleaner and easier to maintain.


- Documentation Read:
 https://docs.flutter.dev/ui/layout/constraints#flex

 https://anmol-gupta.medium.com/deep-dive-into-the-container-widget-in-flutter-d8a42166b352

 https://docs.flutter.dev/ui/layout

 https://docs.flutter.dev/ui/layout/tutorial




### Blockers and Challenges
- None

### 💬 Mentor Feedback
