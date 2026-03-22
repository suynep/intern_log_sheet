# Daily Intern Log: Friday, March 20, 2025
### **Intern: Suyash Nepal**
## Focus: Provider State Management

### Tasks Completed
- [x] Provider Study: Read Provider package documentation and studied `ChangeNotifier`, `ChangeNotifierProvider`, `Consumer`, and `context.watch`/`context.read` patterns.
- [x] Notes App Implementation: Implemented Provider-based state management in the Notes App (minor project): wired up `NotesProvider` for add, edit, delete, and read operations.
- [x] Linter Pass: Ran `flutter analyze` on the final project; resolved all remaining warnings.

### Technical "Today I Learned" (TIL)
- **Concept/Tool:** Provider Package: `context.watch` vs `context.read`
- **Key Takeaway:** "I learned that `context.watch<T>()` subscribes the widget to rebuilds whenever `T` notifies, while `context.read<T>()` just fetches the instance once without subscribing. Using `watch` inside a button's `onPressed` is a mistake: it causes unnecessary rebuilds. The rule: use `watch` in `build()`, use `read` in callbacks."
- **Code:**
```dart
// providers/notes_provider.dart
import 'package:flutter/foundation.dart';
import '../models/note.dart';

/// Manages the list of [Note] objects and notifies listeners on change.
class NotesProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  /// Returns an unmodifiable view of all notes.
  List<Note> get notes => List.unmodifiable(_notes);

  /// Adds a new [note] to the list.
  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }

  /// Deletes the note with the given [id].
  void deleteNote(String id) {
    _notes.removeWhere((n) => n.id == id);
    notifyListeners();
  }
}

// In a widget:
// build()      → context.watch<NotesProvider>().notes
// onPressed()  → context.read<NotesProvider>().addNote(...)
```

### Work Evidence
- **Documentation Read:** [Provider package – pub.dev](https://pub.dev/packages/provider)
- **Documentation Read:** [Flutter simple state management](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)

### 💬 Mentor Feedback

