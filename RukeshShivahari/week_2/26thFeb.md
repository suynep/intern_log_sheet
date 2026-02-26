# Daily Intern Log: [2026/02/26]

### **Intern: Rukesh Shivahari**

### Week 2 Day 04: [Null Safety, Type System & Error Handling].

### Tasks Completed

    [] Null Safety : Researched on the null safety in Dart and got to know why it enforces sound null safety. Walkthrough different ways of writing the null safety code like using null assertion operator types, null aware operators, concept of late variables. Got to know that from Dart 3 onwards it has in built null safety criteria and how from Dart 2.12 to 2.19, the null safety needs to be enabled. Furthermore, can't use null safety in SDK versions earlier than Dart 2.12.
   
    [] Type System : Through numerous practices and documentation, understood the type system and how the Dart checks data types. Got to know about static type checking and runtime checks and how they really help in writing the proper working code. Got the tips on how to pass the static analysis soundly. Studied on what cases the variables can infer its type from the respective value, with the help of type inference. Researched on generic types with its syntax and its best uses in different cases. Additionally, practiced the type casting and type checking programs to understand what it really does.

    [] Error Handling : As this is one of the most needed concepts in every programming language, studied various ways of handling error in Dart. Researched on different types of exceptions and errors that can occur when programming. Explored about throwing and catching exceptions, try catch blocks, use case of finally block and even custom exceptions.
    Additionally researched on this important concept called Stacktraces which helps debugging the code.

    [] Practice Task : Completed and practiced the required tasks related to the Dart null safety, type system and error handling.

### Technical "Today I Learned" (TIL)

    - I understood that null safety in the Dart programming language is designed to eliminate null reference errors during the compilation phase, rather than waiting for them to occur at runtime and I got to know that this feature has been a default setting from Dart version 2.12. I learned that all data types are non-nullable by default. You must explicitly use a '?' right after the data type to allow a value to be null. Additionally I even experimented and learned to use "late" which is really handy when there are cases where variable will be initialized later, but will be assigned later.
    Thus it has helped me to be clear about which variables can be null, leading to cleaner, more maintainable, and self-documenting code. 

    - I acquired ideas on how Dart is a statically typed language with type inference and support for generics. I got to know that Dart primarily helps to catch type related bugs early at compile time and improves overall code quality and performance. Additionally, by checking types at compile time, the Dart analyzer can identify type mismatches and potential errors before the code is run, preventing unexpected runtime exceptions. So I learned that how useful it is for writing proper working code. In type system I even learned that Object is type-safe (requires casting to use specific methods) while dynamic skips checks. So its best recommended to ignore the use of dynamic in Dart.

    - I learned to handle error in Dart by experimenting various unexpected runtime events and learned try-catch blocks to catch exceptions, which presents user friendly messages, log errors, and maintain app stability. I even got to know this concept of throw which allows capturing an exception to log it, then letting it propagate. I even analyzed how its different from other programming language like in contrast to Java, all of Dart's exceptions are unchecked exceptions and methods don't declare which exceptions they might throw, and aren't required to catch any exceptions. I understood the basic flow of this error handling like to handle code that can throw more than one type of exception, you can specify multiple catch clauses. The first catch clause that matches the thrown object's type handles the exception. If the catch clause does not specify a type, that clause can handle any type of thrown object.

    - Additionally, by practicing tasks on topics like null safety, type system and error handling I got more practical ideas and clear insights on solving such issues and problems.




- Documentation Read: 
https://dart.dev/language
https://dart.dev/null-safety
https://dart.dev/null-safety/understanding-null-safety
https://dart.dev/language/type-system
https://dart.dev/language/error-handling

### Blockers and Challenges
- None

### 💬 Mentor Feedback

