**Exercise 1: Stateless Counter Components**

- [x] Create several reusable StatelessWidget components:
  - Custom card widget (takes data as parameters)
  - Product display widget
  - User info card
- [x] Pass all data through constructor
- [x] Make them accept callbacks for actions
- [x] Ensure they're truly immutable

**Exercise 2: Stateful Interactive Widget**

- [x] Build a StatefulWidget form:
  - Text input fields
  - Checkbox toggle (!To Do)
  - Color picker button
  - Submit and reset buttons
- [x] Track state properly (form values)
- [x] Implement initState() for initialization
- [x] Implement dispose() for cleanup
- [x] Display current state on screen

**Exercise 3: Lifecycle Logger**

- [ ] Create StatefulWidget that logs all lifecycle events
- [ ] Print: initState, didChangeDependencies, build, didUpdateWidget, deactivate, dispose
- [ ] Create parent widget that can trigger didUpdateWidget
- [ ] Display logs in ListView
- [ ] Observe order and frequency of calls
- [ ] Test by navigating away and back

**Exercise 4: Conditional Widget Selection**

- [ ] Build app with multiple screens
- [ ] Some screens use StatelessWidget (display only)
- [ ] Some use StatefulWidget (with interaction)
- [ ] Document why each choice was made
- [ ] Refactor between types and observe impact

---

