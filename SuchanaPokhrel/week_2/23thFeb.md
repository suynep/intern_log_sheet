# Daily Intern Log: [Day 4]

### **Intern: Suchana Pokhrel**

## Focus: Understanding Dart Basics including variables and constants.
### Tasks Completed

- Installed dart and understood main(), print() and other necessary basics.
- Learned about how variables are declared and the difference between final and const and var and dynamic.
- Understood nullable and non-nullable variables.
- Practiced some questions related to these contents.

### Technical "Today I Learned" (TIL)

- What is the major difference between var and dynamic and also var, final and const,
- nullable and non- nullable and also the symbols used ! and ?.
- why is explicit type preferred more than type inference.

Code:
void main() {
  final String? name = 'Suchana'; //used final and nullable together.
  const int age = 20;
  late String address;
  int? number = 7; //111

  dynamic condition =
      name ??
      'Null Value'; //means yedi null xa bhne null value print gar bhnya.

  print(condition);
  print(age);

  address = 'Kapan'; //late must be initialzed before use
  print(address);

  print(
    number.bitLength,
  ); // we are saying that dart this is not null and will not be null.
}


### Work Evidence

- Documentation Read: [https://dart.dev/language/variables, https://www.geeksforgeeks.org/dart/dart-tutorial/]

### Blockers and Challenges

- I had some issues regarding null safety and late keyword but later understood.

### 💬 Mentor Feedback

(To be filled by Mentor):
