# Daily Intern Log: 10 Mar. 2026

### **Intern: Suyash Nepal**

## Focus: Learning (Flutter Layout and Constraints, Layout algorithm, Linear Reconciliation)
### Tasks Completed

- [ ] **Day 02 Readings**: [Understanding Constraints](https://docs.flutter.dev/ui/layout/constraints), [Inside Flutter](https://docs.flutter.dev/resources/inside-flutter)
- [ ] **Day 02 Practice Task**: In Progress

### Technical "Today I Learned" (TIL)
- Constraints flow down, sizes flow up, parent sets position: Every widget receives tight or loose constraints from its parent, decides its own size within those bounds, and hands that size back up. The parent then positions it. A widget can never position itself.
- "Unbounded constraints" aren't a bug, they're a signal. When a ListView gives its children infinite height, it's saying "take whatever you need". Putting a widget that needs a finite constraint (like a Column with mainAxisSize: max) inside it throws, not because something broke, but because the math genuinely doesn't work: you can't fill infinity.
- The three trees aren't just an implementation detail. The separation of Widget → Element → RenderObject means Flutter can be smart: when you rebuild a widget, it first checks if the type at that slot changed. If not, it reuses the Element and patches the RenderObject in place. This is linear reconciliation — O(n) instead of the O(n³) naive tree diffing would require.
- tight vs loose constraints matter more than widget size. A SizedBox(width: 100) inside a widget that passes tight constraints doesn't work the way you'd expect — the parent's tight constraint wins. Understanding whether constraints are tight (min == max) or loose (min == 0) explains most "why isn't my size working" moments.
- IntrinsicWidth/Height is a code smell. They exist, they work, but they force a two-pass layout which breaks Flutter's single-pass performance guarantee. If you're reaching for them, it usually means the layout hierarchy needs rethinking.

### Work Evidence
- Can be found in `week_4_tasks` folder


### Blockers and Challenges

- The [Documentation](https://flutter.dev/docs) and the [API Reference](https://api.flutter.dev/) contained some terminologies that were difficult to grasp, and when I felt I was diving too deep, I refrained from going further to respect the constraints of time. However, it was fun, overall. 

### 💬 Mentor Feedback

