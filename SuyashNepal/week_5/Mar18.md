# Daily Intern Log: Wednesday, March 18, 2025
### **Intern: Suyash Nepal**
## Focus: App Structure & Code Organization

### Tasks Completed
- [x] Structure Study: Studied Flutter project structure best practices — `lib/models/`, `lib/providers/`, `lib/screens/`, `lib/widgets/`.
- [x] Refactor: Refactored an existing small Flutter project to follow the conventional folder structure.
- [x] Barrel Files: Added `index.dart` barrel export files where appropriate to simplify imports.

### Technical "Today I Learned" (TIL)
- **Concept/Tool:** Flutter Project Folder Conventions
- **Key Takeaway:** "I learned that splitting code into `models/`, `providers/`, `screens/`, and `widgets/` isn't just aesthetics — it enforces a one-way dependency flow. Screens depend on providers and widgets, providers depend on models, and models depend on nothing above them. This makes it much easier to locate a bug and swap out a layer without touching others."
- **Code:**
```
lib/
├── main.dart
├── models/
│   └── note.dart
├── providers/
│   └── notes_provider.dart
├── screens/
│   ├── home_screen.dart
│   └── note_detail_screen.dart
└── widgets/
    ├── note_card.dart
    └── empty_state.dart
```

### Work Evidence
- **Documentation Read:** [Flutter – Simple app state management](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)

### 💬 Mentor Feedback

