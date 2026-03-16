# Daily Intern Log: 11 Mar. 2026

### **Intern: Suyash Nepal**

## Focus: Learning (Stateful Widget Lifecycle, `BulidContext`, `InheritedWidget`)
### Tasks Completed

- [ ] **Day 03 Readings**: [State](https://api.flutter.dev/flutter/widgets/State-class.html), [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.html), [InheritedWidget](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html)
- [ ] **Day 03 Practice Task**: In Progress

### Technical "Today I Learned" (TIL)
- State outlives its widget. The Element holds onto the State object across rebuilds; the Widget is just a temporary config snapshot. That's why initState runs once even when the widget rebuilds a hundred times.
- `BuildContext` is the Element. Not a reference to it, not a wrapper — it is the Element, exposed through an interface. When you call `context.findAncestorWidgetOfExactType()`, you're walking the element tree, not the widget tree.
- `InheritedWidget` doesn't push, it pulls. Descendants opt in by calling `context.dependOn...()`, which registers them for rebuilds. Widgets that read the inherited widget rebuild on change; widgets that don't call it never know it changed. The subscription is implicit and scoped to the context.
- `updateShouldNotify` is the performance knob. Return false and zero dependents rebuild, even if the data changed. The framework trusts you completely here: no deep equality, no diffing.


### Work Evidence
- Started Implementing the End-of-the-week project with the concepts learned today. Can be found [here](https://github.com/suynep/solis)


### Blockers and Challenges

- The [Documentation](https://flutter.dev/docs) and the [API Reference](https://api.flutter.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

