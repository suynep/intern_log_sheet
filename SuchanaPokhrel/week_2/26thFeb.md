# Daily Intern Log: Day 4

### **Intern: Suchana Pokhrel**

## Focus: Control Flow and Functions

### Tasks Completed

- Learned about different conditional statements.
- Understood switch cases and the difference between if else and switch
- Learned about functions and parameters.
- Understood what is first class and higher order function.

### Technical "Today I Learned" (TIL)

Code:
```dart

void main() {
  //standard declaration

  int add(int a, int b) {
    return a + b;
  }

  //arrow function
  int jod(int a, int b) => a + b;

  //parameter and argument
  void greet(String name) {
    //no return type with argument
    print(name);
  }

  //arrow function
  void greeting(String name) => print(name);
  print(add);
  print(jod);
  print(greet);
  print(greeting);

  //optional parameter -> written inside square brackets
  int sum(int a, int b, [int c = 0]) {
    return a + b + c;
  }

  sum(22, 24, 7);

  //anonymous funtion --> there is no return type and name before parenthesis
  var multiply = (int a, int b) => a * b;
  print(multiply);

  const fruits = ['APple', 'Banana'];
  fruits.forEach((name) => print('${name}*${name}'));

  const number = [2, 3, 4, 5, 5, 6];
  var even = number.where((num) => num % 2 == 0);
  print(even);

  //closures
  Function countNumbers() {
    int count = 0;
    return () {
      count++;
      print('The count is: $count');
    };
  }

  var countTwice = countNumbers();
  countTwice();
  countTwice();

  //recursive and first class functions.
  int factorial(int n) {
    if (n <= 1)
      return 1;
    else
      return n * factorial(n - 1);
  }

  var factFour = factorial; //() dont use
  print(factFour(4));
}

```

### Work Evidence

- Documentation Read:[https://dart.dev/language/functions]

### Blockers and Challenges

- NO Issues
### 💬 Mentor Feedback

(To be filled by Mentor):
