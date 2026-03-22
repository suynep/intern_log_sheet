# Daily Intern Log: Monday, March 16, 2025
### **Intern: Suyash Nepal**
## Focus: Linter & Code Conventions

### Tasks Completed
- [x] Linter Setup: Configured `analysis_options.yaml` in a Flutter project and enabled recommended lint rules.
- [x] Fix Warnings: Resolved all linter warnings flagged after enabling the analysis options.
- [x] Effective Dart Summary: Read and summarized the Effective Dart style guide, focusing on naming, style, and usage sections.

### Technical "Today I Learned" (TIL)
- **Concept/Tool:** Dart Linter & `analysis_options.yaml`
- **Key Takeaway:** "I learned that `analysis_options.yaml` is where you opt into lint rules. For instance, adding `include: package:flutter_lints/flutter.yaml` gives you Flutter's recommended rule set, and you can extend or override individual rules under the `linter: rules:` key. The linter doesn't just catch bugs; it enforces idiomatic Dart style (e.g., preferring `final`, avoiding unnecessary `new`)."

- **Code:**
```yaml
# analysis_options.yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: true
    avoid_print: true
    prefer_single_quotes: true
```

### Work Evidence
- **Documentation Read:** [Effective Dart – Style](https://dart.dev/guides/language/effective-dart/style)
- **Documentation Read:** [flutter\_lints package](https://pub.dev/packages/flutter_lints)

### 💬 Mentor Feedback
