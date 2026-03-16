# Daily Intern Log: 12 Mar. 2026

### **Intern: Suyash Nepal**

## Focus: Implementing End-of-the-week Project ([Solis Weather Dashboard](https://github.com/suynep/solis))
### Tasks Completed

- [ ] **Day 04 Readings**: [Flutter Docs](https://docs.flutter.dev/), [API docs](https://api.flutter.dev/)
- [ ] **Day 04 Practice Task**: In Progress

### Technical "Today I Learned" (TIL)
- `InheritedWidget` at app scale justifies itself. One `dependOnInheritedWidgetOfExactType` call anywhere in the tree beats threading AppConfiguration through every constructor.
- Data class granularity is a design decision. `WeatherData`, `WeatherDataUnits`, `WeatherDataUnitAmalgam` as separate types means widgets only touch what they need, and the type system enforces it.
- List identity will bite you. `WeatherListModel` notifying dependents only works if updateShouldNotify compares contents, not references. Mutating the same list instance silently breaks reactivity.
- Separate inherited widgets for separate concerns. `AppConfiguration` changes rarely, weather data changes on every fetch. One widget for each means theme subtrees don't rebuild on network responses.


### Work Evidence
- Started Implementing the End-of-the-week project with the concepts learned today. Can be found [here](https://github.com/suynep/solis)


### Blockers and Challenges

- The [Documentation](https://flutter.dev/docs) and the [API Reference](https://api.flutter.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

