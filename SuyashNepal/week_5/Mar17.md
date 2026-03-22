# Daily Intern Log: Tuesday, March 17, 2025
### **Intern: Suyash Nepal**
## Focus: App Architecture (MVC & MVVM)

### Tasks Completed
- [x] MVC Study: Studied the Model-View-Controller pattern and how it applies to Flutter apps.
- [x] MVVM Study: Studied the Model-View-ViewModel pattern, focusing on data binding and separation of concerns.
- [x] Pattern Comparison: Compared MVC vs MVVM and documented when to prefer each.

### Technical "Today I Learned" (TIL)
- **Concept/Tool:** MVC vs MVVM Architecture Patterns
- **Key Takeaway:** "I learned that MVC tightly couples the Controller to the View, which can become messy in Flutter since widgets are inherently reactive. MVVM fits Flutter better because the ViewModel exposes state that the View simply observes: the View never calls business logic directly. This makes testing the ViewModel easy since it has no UI dependency."
- **Code:**
```dart
// Model
class CounterModel {
  int count;
  CounterModel({this.count = 0});
}

// ViewModel (extends ChangeNotifier for Provider)
class CounterViewModel extends ChangeNotifier {
  final CounterModel _model = CounterModel();

  int get count => _model.count;

  void increment() {
    _model.count++;
    notifyListeners();
  }
}

// View just reads from ViewModel — no logic here
```

### Work Evidence
- **Documentation Read:** [Flutter state management overview](https://docs.flutter.dev/data-and-backend/state-mgmt/options)
- **Documentation Read:** [ChangeNotifier API](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html)

### 💬 Mentor Feedback

