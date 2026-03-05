# Daily Intern Log: [2026/03/03]

### **Intern: Aayush Shrestha**

### Week 3 Day 01: [Dart OOP — Classes & Objects, Constructors, Encapsulation, Inheritance, Abstract Classes]

---

### Tasks Completed

    [x] Classes and Objects : Learned what a class is and how to define one in Dart, created objects (instances) from classes, understood the difference between instance variables and class (static) variables, practiced instance methods vs class methods, and explored the use of the `this` keyword. Practice: Created a `Book` class with properties (title, author, pages, isbn) and methods (read, bookmark, getInfo).

    [x] Constructors : Studied default constructors, parameterized constructors, named constructors, const constructors, and constructor shorthand syntax using `this.property`. Practice: Created a `Car` class with multiple constructor types including a named constructor `Car.electric()`.

    [x] Encapsulation : Understood the concept of encapsulation and why it matters in OOP, practiced using private members with the `_` prefix, implemented getters and setters, learned when to use private vs public access, and reinforced understanding of the `final` and `const` keywords. Practice: Created a `BankAccount` class with private balance and public deposit/withdraw methods including validation.

    [x] Inheritance : Practiced extending classes using `extends`, used the `super` keyword to access parent class members, applied method overriding with `@override`, understood when to prefer inheritance vs composition, and practiced calling parent class constructors. Practice: Created an `Animal` parent class and extended it with `Dog`, `Cat`, and `Bird` child classes.

    [x] Abstract Classes : Learned what abstract classes are, how to define abstract methods without implementation, when to use abstract classes vs concrete classes, how concrete methods can exist in abstract classes, and that abstract classes cannot be instantiated. Practice: Created an abstract `Shape` class with an abstract `calculateArea()` method, implemented in `Circle`, `Rectangle`, and `Triangle`.

---

### Technical "Today I Learned" (TIL)

    - Learned how to define classes and instantiate objects in Dart, and understood the distinction between instance-level and class-level (static) members.

    - Practiced multiple constructor types in Dart including default, parameterized, named, and const constructors, along with the shorthand `this.property` syntax for cleaner initialization.

    - Understood encapsulation as a core OOP principle — used the `_` prefix to define private members and implemented getters/setters to control access and add validation logic.

    - Applied inheritance using `extends` and `super`, practiced `@override` for method overriding, and learned how parent constructors are called from child classes.

    - Gained a clear understanding of abstract classes — used them to enforce a contract via abstract methods while keeping shared logic in concrete methods within the same class.

    - Understood that abstract classes cannot be instantiated directly and serve as blueprints for subclasses to implement specific behavior.

    - Strengthened understanding of OOP design decisions such as when to use inheritance vs composition for better code structure and maintainability.

---

- Documentation Read:  
https://dart.dev/language/classes

---

- Work Proof:  
https://github.com/aayush0631/aayush_internship.git

---

### Blockers and Challenges
- factory constructor

---

### 💬 Mentor Feedback