# Daily Intern Log: 13 Mar. 2026

### **Intern: Suyash Nepal**

## Focus: Implementing End-of-the-week Project ([Solis Weather Dashboard](https://github.com/suynep/solis))
### Tasks Completed

- [ ] **Day 05 Readings**: [Flutter Docs](https://docs.flutter.dev/), [API docs](https://api.flutter.dev/)
- [ ] **Day 05 Practice Task**: In Progress

### Technical "Today I Learned" (TIL)
- Navigation cuts the widget tree. A pushed route builds its own subtree, completely detached from the originating context. Any InheritedWidget sitting above the Navigator is unreachable from the new page unless it also sits above the MaterialApp (which owns the Navigator).
- The fix is placement, not architecture. Moving AppConfiguration and WeatherListModel above MaterialApp makes them available in every route automatically. A page-scoped InheritedWidget for city details doesn't survive the push because the tree it lived in isn't the tree the new route is built from.
- Granular refresh is a data ownership problem. Refreshing all cities vs. one city means WeatherListModel needs to support both update paths cleanly. A single city refresh that mutates one entry and triggers updateShouldNotify is only safe if dependents can tell which city changed, otherwise everything rebuilds anyway.
- Mock-to-real API is a contract check. Swapping mock data for live responses surfaces shape assumptions baked into data classes. If WeatherData parsed cleanly, the earlier modeling work paid off.


### Work Evidence
- Completed the End-of-the-week project with the concepts learned today. Can be found [here](https://github.com/suynep/solis)


### Blockers and Challenges

- The [Documentation](https://flutter.dev/docs) and the [API Reference](https://api.flutter.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

