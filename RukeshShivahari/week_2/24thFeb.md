# Daily Intern Log: [2026/02/24]

### **Intern: Rukesh Shivahari**

### Week 2 Day 02: [Data Types, Operators & Collections].

### Tasks Completed

    [] Dart Types : Read documentation related to different data types in Dart example Numbers, Strings, Booleans. In summary all these data types in darts are commonly known as Objects too. Got in depth on how Numbers vary on the native dart and web dart due to how native dart uses Dart Virtual machine while web dart compiles the code into Javascript and obviously Numbers in JS and Dart varies.
    Researched on the methods and different functionalities of these data types and where its optimal to use them.
    Additionally a new in-built types like Runes and Symbols were introduced. 
   
    [] Operators : Researched on different yet important operators in Dart that really shape up complex functionalities. Operators like Arithmetic Operators, Relational/Comparison Operators, Logical Operators, Assignment Operators,Conditional Expressions.
    With operators got introduced to operands and different ways of operating various operators. Introduced to the Operator Precedence and Association table.
    
    [] Collections : Got to know about what really collections is in the Dart and how important it is in handling the group of related/unrelated data. Introduced to core concepts of collections like Lists, Sets and Maps.

  
    [] Practice Task : Completed and practiced the required tasks related to the Dart data types, operators and collections.


### Technical "Today I Learned" (TIL)

    - I learned about different data types in Dart and the concept of Nullable when declaring a variable. I learned about type casting to convert from one data type to another data type. Regarding int data type I noted that integer values are limited to 64 bits, depending on the platform. On native systems, they range from -2^63 to 2^63 - 1. In web environments, integers are stored as JavaScript numbers (64-bit floating-point values without fractions), allowing values from -2^53 to 2^53 - 1.
    I even got to know about Regex(Regular Expression) which is generally used for pattern matching logic. I even learned about raw string which can be super helpful when avoiding the special characters in the string and we can create a "raw" string by prefixing it with ‘r’. This advice of String interpolation where String literals are compile-time constants, as long as any interpolated expression is a compile-time constant that evaluates to null or a numeric, string, or boolean value seems really significant.

    - This unique concept of Runes and Symbols as inbuilt type of Dart, are really handy when it comes to handling Unicode characters and identifier mapping. So it easily helps to translate any special strings or characters like emojis, symbols, international languages text/characters with dart's rune and its methods while symbols greatly helps in minification, invaluable for APIs that refer to identifiers by name.

    - While walking through this operators I was introduced to this new concept of how operators can also be a invoked through class methods, for example when performing addition operation the left operand will have '+' as its method and right operand as its parameter. So for operators that take two operands, the leftmost operand determines which method is used. Additionally, learned about the concepts of these Cascade Notation and Spread Operations which really helps in reducing the same tedious code. Even this null aware assignment "?=" seems to be very handy in case of handling the backup values if the runtime or default value becomes null.

    - Furthermore, when working with collections I encountered this invaluable concept where unlike most of the programming languages here in Dart the  iterables and iterators in Dart do not support the [] index operator because they are designed for sequential, one-by-one access, not direct index-based access.So, must use elementAt(index) or iterate through them, whereas only List types allow []. I even learned about this quite handy concepts like spread element and null aware spread elements. Practiced a lot of the collection methods that helps in handling the groups of data easily and optimally. Learned the differences between list, set and map and their unique concept helped to understand where its best to use them.  

    - Practiced and experimented with different data types , operators and collections in dart and learned more about its related methods and shorthands.
k




- Documentation Read: 
https://dart.dev/language
https://dart.dev/libraries/dart-core
https://dart.dev/language/operators#spread-operators

### Blockers and Challenges
- None

### 💬 Mentor Feedback

