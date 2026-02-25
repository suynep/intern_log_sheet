# Daily Intern Log: Day 2

### **Intern: Suchana Pokhrel**

## Focus: Data Types and Operator
### Tasks Completed

- Learned about different data types.
- Understood the difference between parse and tryParse.
- Learned about strings and different string methods.
- Understood uses of different operators.

### Technical "Today I Learned" (TIL)

- What is the difference between int and double and Parse and TryParse. 
- Why does not dart support implicit type casting and only explicit casting.
- The different methods of string and why do we use raw string.

Code:
```dart
//Practice data types and operations
void main() {
  //int data type
  int a = 20;
  //a += 2.3; //int canot store double values.
  a += 2;
  print(a);

  //double data type
  double b = 1.3;
  b -= 1; //double can store both int and floating numbers.
  print(b);

  //num data type.
  num c = 12;
  c /=
      2.5; //num can contain both int and double values because it is the subset of these two.
  print(c);

  //Explicit Type Casting -----> double to int
  double d = 10.5; //data is lost here
  int intValue = d.toInt();
  print(intValue);

  //int to String using toString(),
  int x = 42;
  String s = x.toString(); //this will convert 42 to String
  print(s);

  //String to int
  String numericValue = '123';
  int parse_string = int.parse(numericValue);
  print(parse_string);

  String invalid_string = 'abscde';
  //parsing
  try {
    int throw_error = int.parse(invalid_string);
    print(throw_error);
  } catch (e) {
    print('Error parsing the interger.');
  }

  //String to int --> tryParsing
  String invalidString = 'pei';
  try {
    double? invalid_string = double.tryParse(invalidString);
    print(invalid_string);
  } catch (e) {
    print('Error');
  }
}
```

### Work Evidence

- Documentation Read:[https://dart.dev/language/built-in-types]

### Blockers and Challenges

- I had some issues regarding cascade notations.

### 💬 Mentor Feedback

(To be filled by Mentor):
