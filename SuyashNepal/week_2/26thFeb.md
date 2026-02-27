# Daily Intern Log: 26th Feb. 2026

### **Intern: Suyash Nepal**

## Focus: Practice new GPT-generated Problems, Object Superclass, Records, LinkedHashMap, Time Complexities of List Operations
### Tasks Completed

- [x] **Day 04 Readings**: [Records](https://dart.dev/language/records), [Object](https://api.dart.dev/dart-core/Object-class.html), [LinkedHashMap](https://api.dart.dev/dart-collection/LinkedHashMap-class.html)
- [x] **Day 04 Practice Task**: Completed!

### Technical "Today I Learned" (TIL)

- Dynamic arrays in Dart provide constant-time indexed access and updates, while insertions or removals in the middle require element shifting, leading to linear cost. Appending is amortized constant time due to occasional resizing.
- Higher-order list operations such as `fold()`, `reduce()`, `map()`, `where()`, and `forEach()` execute in linear time, performing a single pass over the collection. Memory overhead is minimal for reducers but grows when producing new collections (e.g., `expand()`).
- Records offer a lightweight, type-safe way to group multiple values without defining a full class, improving clarity in structured returns and pattern matching scenarios.
- `LinkedHashMap` maintains insertion order while preserving near-constant-time key lookups, making it practical when deterministic iteration order matters alongside performance.
- Every class in Dart implicitly extends `Object`, reinforcing the unified type system and enabling consistent behavior for methods like `toString()`, `hashCode`, and `==`.
- Understanding time complexity transforms coding from “it works” to “it scales” and scaling is where engineering begins.


### Work Evidence

- Refactored Problem 1, 2, 3, 4 extensively. The code can be found at: <https://github.com/suynep/dart_essentials/blob/main/problems/>
- [Time Complexities of List Operations](https://gist.github.com/suynep/2a28b3fedd7760e1fb61c68c7ebd3658)

> AI Usage: The [Time Complexities of List Operations] note is generated using Gemini,
>
> The code (*dart_essentials*) however, is written WITHOUT any using any AI tools.



### References
- [Documentation](https://dart.dev/language)
- [API Reference](https://api.dart.dev/)


### Blockers and Challenges

- The [Documentation](https://dart.dev/language) and the [API Reference](https://api.dart.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

