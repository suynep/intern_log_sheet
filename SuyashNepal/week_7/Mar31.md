# Daily Intern Log: Tuesday, March 31, 2025
### **Intern: Suyash Nepal**
## Focus: Advanced SharedPreferences — Patterns & Best Practices

### Tasks Completed
- [x] SettingsService Class: Created `lib/services/settings_service.dart` as a singleton wrapper around `SharedPreferences`, exposing typed getters/setters with centralised key constants.
- [x] Storing Complex Objects: Practiced encoding a simple Dart object to a JSON string with `jsonEncode` before writing to prefs, and decoding with `jsonDecode` on read: since `SharedPreferences` has no native object support.
- [x] Provider Integration: Wired `SettingsService` into a `SettingsViewModel extends ChangeNotifier`; settings reads happen in the ViewModel and `notifyListeners()` is called after each write.
- [x] Theme Persistence: Implemented dark/light mode toggle persisted via `SettingsService`; `MaterialApp.themeMode` is driven by the ViewModel value loaded at startup.
- [x] First-Launch Detection: Added `isFirstLaunch` bool key; set to `false` after onboarding completes — foundation for "Show onboarding on next launch" toggle.

### Technical "Today I Learned" (TIL)

- **Concept:** Centralising key constants to avoid "stringly-typed" bugs
- **Key Takeaway:** Scattering raw string keys like `'isDarkMode'` across the codebase is a silent bug factory: a single typo means you silently read `null` instead of the stored value, with no compile-time warning. Collecting all keys in one `abstract final class _Keys` (or a top-level `const` block) inside the service means a rename is one change, and mistyping a key is a compile error. Combined with typed wrapper methods, the rest of the app never needs to know the underlying string at all.

- **Code:**
```dart
// lib/services/settings_service.dart
class SettingsService {
  static final SettingsService _instance = SettingsService._();
  factory SettingsService() => _instance;
  SettingsService._();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Key constants — one place to change them
  static const _keyTheme       = 'theme_mode';
  static const _keyLanguage    = 'language';
  static const _keyFontSize    = 'font_size';
  static const _keyFirstLaunch = 'is_first_launch';

  ThemeMode get themeMode {
    final stored = _prefs.getString(_keyTheme) ?? 'system';
    return ThemeMode.values.firstWhere((e) => e.name == stored,
        orElse: () => ThemeMode.system);
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    await _prefs.setString(_keyTheme, mode.name);
  }

  bool get isFirstLaunch => _prefs.getBool(_keyFirstLaunch) ?? true;

  Future<void> markLaunched() => _prefs.setBool(_keyFirstLaunch, false);
}
```

### Work Evidence
- Documentation Read: [shared_preferences — pub.dev](https://pub.dev/packages/shared_preferences)
- Documentation Read: [Simple app state management — Flutter docs](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)

### 💬 Mentor Feedback
