# Daily Intern Log: 09 Mar. 2026

### **Intern: Suyash Nepal**

## Focus: Learning (Flutter Architecture, The Inside Flutter Document, Understanding Constraints)
### Tasks Completed

- [ ] **Day 01 Readings**: IN PROGRESS [Architectural Overview](https://docs.flutter.dev/resources/architectural-overview), [Inside Flutter](https://docs.flutter.dev/resources/inside-flutter), [Understanding Constraints](https://docs.flutter.dev/ui/layout/constraints), [Stateless Widget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html), [Stateful Widget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html), [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.html)
- [ ] **Day 01 Practice Task**: In Progress

### Technical "Today I Learned" (TIL)
- Flutter’s layered architecture separates responsibilities across multiple layers (Framework, Engine, and Embedder). Most day-to-day development happens in the framework layer, which provides widgets, rendering logic, and UI abstractions.
- Widgets are lightweight configuration objects. In Flutter, UI is built by composing widgets rather than manipulating UI elements directly. Widgets describe the desired interface, and the framework handles efficiently updating the rendered output.
- Stateless vs Stateful widgets:
	- StatelessWidget represents UI that depends only on configuration and does not change over time.
	- StatefulWidget separates immutable widget configuration from mutable State, allowing the UI to update when data changes.
- BuildContext represents a widget’s position in the widget tree. It allows widgets to access inherited data (such as themes or providers) and interact with other parts of the framework.
- The Flutter layout system is constraint-based. Parent widgets pass constraints (min/max width and height) down the tree, children choose their size within those limits, and the parent positions them. Understanding this flow is key to solving many layout issues.
- Flutter prioritizes performance through immutability and rebuild efficiency. Widgets are cheap to recreate, and the framework optimizes updates by comparing configurations and updating only the necessary parts of the render tree.
- The “Inside Flutter” document emphasizes how the framework avoids unnecessary layout and rendering work, enabling smooth UI performance even with frequent rebuilds.


### Work Evidence


### Blockers and Challenges

- The [Documentation](https://flutter.dev/docs) and the [API Reference](https://api.flutter.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

