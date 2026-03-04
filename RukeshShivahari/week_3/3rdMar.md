# Daily Intern Log: [2026/03/03]

### **Intern: Rukesh Shivahari**

### Week 3 Day 01: [Dart OOP Concepts].

### Tasks Completed

    [] Classes and Objects : In aspect of Dart programming language, I got to know about class and object. With common analogy on how classes and objects represent more like blueprint entity and real world object, I go to know the relation between them. Researched deeply on different ways of declaring and assigning instance variables and class variable. Gradually, got knowledge on instance methods and class methods too. Unlike, how other OOP languages uses 'this' keyword commonly, Dart introduced initializer list as a shortcut to 'this' keyword so 'this' is not used that commonly.

    [] Constructors : Unlike other languages, Dart has many types of constructors and based on the criteria and different use cases corresponding constructor is used like Default Constructors, Parameterized Constructor, Named Constructors, Factory Constructors, Const Constructors. Likewise, researched on this unique concept of initializer lists and even how to write shorthand syntax of constructor. Furthermore, got to know about how can we initialize and the super constructor in the sub classes and assign its arguments.

    [] Four pillars of OOP : In terms of Dart, got to know about four pillars of Object Oriented Programming Language(Inheritance, Encapsulation, Abstraction, Polymorphism). Researched on different practices that implement these four features of OOP in dart, like extending or implementing classes, declaring abstract classes, different access methods in the class and many more.

    [] Mixins and Extension Methods : Dart has this intriguing concept called Mixins which is a way to reuse code in multiple classes without using inheritance. Got to know about how can we make a mixin like a mixin can be defined using the "mixin" keyword and how it can be applied in the new classes using "with" keyword. Researched on why it was introduced, its use cases and how is it legitimately different from inheritance. Furthermore, got to know about Extension methods which allow you to add new functionality to an existing class without modifying or inheriting from it. How it cant be simply created using the "extension" keyword. Got to know about extensions on built-in types where extensions are commonly used on built-in types like String, List, int, etc.


### Technical "Today I Learned" (TIL)

    - Learned why Dart is called object oriented programming language. I learned that the 'this' keyword refers to the current object (instance). It is commonly used to differentiate between instance variables and constructor parameters.
        I learned about this uniques concept about creating of objects where constructing two identical compile-time constants points to same entity in the memory. For example using "const" when assigning the value like:
        var a = const ClassA();
        var b = const ClassB();
        assert(identical(a, b));

    - I acquired knowledge on this concept of different constructors in dart like a default constructor is automatically created if you don’t define any constructor.
    It has no parameters whereas if you define your own constructor, Dart no longer provides the default one. A named constructor lets a class have multiple constructors with different names. Moreover, I learned about this unique concept in constructor called Factory Constructor where it  doesn’t always create a new instance but it can return an existing instance, return a subclass and control object creation.

    - I learned about these main concepts of object oriented programming language like Encapsulation where it means bundling data (variables) and methods inside a class and restricting direct access to some details. Here in terms of Dart, '_' (underscore) is used to make members private (library-private), getters and setters are used to control access. Abstraction means hiding implementation details and showing only essential features. In Dart, this is done using abstract classes and interfaces and finally Inheritance allows a class to reuse properties and methods from another class. It allows a class to reuse properties and methods from another class.

    - Comprehended this unique concept in Dart called Mixins which is applied to share behavior across unrelated classes, when there is no need of creating a deep inheritance chain and just want a cleaner and more flexible code reuse. Learned that Mixins add functionality to a class without being its parent. So this is how it conceptually differs from inheritance in dart. Additionally, even learned the mixin constraint in Dart using 'on' keyword that only and only facilitate on the provided classes.
    Furthermore, I grasped the insignificant knowledge about this extension methods and its use cases like when it is needed to add helper methods, when the original class (like built-in types) is unmodifiable.

### Work Evidence
- The practice tasks that was assigned is in this [url](https://gist.github.com/ShivahariRukesh/db21b3a71db3be1e447ebbcfb08607bd).


- Documentation Read:
https://dart.dev/language/classes
https://dart.dev/language/constructors
https://dart.dev/language/mixins



### Blockers and Challenges
- None

### 💬 Mentor Feedback
