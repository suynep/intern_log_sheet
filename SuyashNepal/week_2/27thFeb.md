# Daily Intern Log: 27th Feb. 2026

### **Intern: Suyash Nepal**

## Focus: Specific Dart Concepts
### Tasks Completed

- [x] **Day 05 Readings**: [BigInt in Dart](https://api.dart.dev/dart-core/BigInt-class.html), [Effective Dart](https://dart.dev/effective-dart), [Linter Rules](https://dart.dev/tools/linter-rules), Multiple Entry Points Handling in dart projects
- [x] **End of the Week Project**: Completed! [Find Here](https://github.com/suynep/dart_essentials)

### Technical "Today I Learned" (TIL)

#### Precision beyond int with BigInt
Dart’s BigInt enables arbitrary-precision arithmetic, which is essential when correctness outweighs performance (e.g., cryptography, financial modeling, combinatorics). It enforces explicit conversions, encouraging deliberate numeric design rather than silent overflow.
#### Everything inherits from Object — and that matters
Understanding the Object superclass clarified how methods like toString(), hashCode, and == shape equality, logging, and data structure behavior. Clean overrides directly influence correctness when working with maps, sets, and custom models.
#### Records as lightweight structural data carriers
Records provide a concise way to return multiple values without creating boilerplate classes. They improve readability in small data transfers and pattern matching scenarios while keeping code expressive and type-safe.
#### LinkedHashMap preserves insertion order by default
Dart’s default Map implementation maintains insertion order, which is crucial when iteration order affects UI rendering, caching strategies, or deterministic outputs.
List operations are not all equal in cost

Index access and assignment are O(1), but insertions/removals in the middle are O(n) due to shifting. Sorting is O(n log n). Choosing the right structure (e.g., List vs. Set vs. Map) is a performance decision, not just a stylistic one.
#### Code quality is a competitive advantage
Reviewing Effective Dart and linter rules reinforced that readability, naming conventions, and idiomatic structure are long-term productivity multipliers. Clean code reduces cognitive load — and bugs rarely survive clarity.


### Work Evidence

- Refactored Problem 1, 2, 3, 4 extensively. The code can be found at: <https://github.com/suynep/dart_essentials/blob/main/problems/>
- [Time Complexities of List Operations](https://gist.github.com/suynep/2a28b3fedd7760e1fb61c68c7ebd3658)

> AI Usage: The [Time Complexities of List Operations] note is generated using Gemini,
>
> The code (*dart_essentials*) however, is written WITHOUT using any AI tools.



### References
- [Documentation](https://dart.dev/language)
- [API Reference](https://api.dart.dev/)


### Blockers and Challenges

- The [Documentation](https://dart.dev/language) and the [API Reference](https://api.dart.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

The end-of-the-week meeting concluded with my Project demonstration, where I got the following feedback related to code:
- Add Validation checks for every `readLineSync()` method call i.e. Validate EVERY User Input
- Add well-documented good comments (doc-comments for classes and methods, single-line/multi-line for complex operations)
- Avoid redundancy pertaining to flag variable in `do-while` loops
- Delegate redundant operations to Exclusive Functions (e.g. reading user choices, validating user inputs, input conversions to internal representations (enums, classes etc.))
- Strictly adhere to [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) at all times.
