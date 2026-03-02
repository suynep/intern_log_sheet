# Daily Intern Log: Day 5

### **Intern: Suchana Pokhrel**

## Focus: Null Safety and Type System with Error Handling

### Tasks Completed

- Learned about null safety and nullable types.
- Understood about null aware operators and different types of typing
- Learned about type inference and type casting with as and is

### Technical "Today I Learned" (TIL)

Code:
```dart

void main() {
  //static typig --- the typing whose value is known in the compile time
  int age = 20;
  //dynamic typing --- the typing whose value is known during run time
  var name = 'Suchana';
  name = 'Ram';

  print(name);
  print(age);

  //type inference = whose type dart knows.
  var x = 10; //type infered because dart knows the type of x.
  final y = 'String';
  final c = 'String';
  print(c);
  const z = 30.9;
  dynamic a = 'String';
  a = 12; //doesnot do compile time type check
  //x = 'String'; //does compile time type check

  print(x.runtimeType);
  print(y.runtimeType);
  print(z.runtimeType);
  print(a.runtimeType);

  //Generics -- meaning it allows what type a collection contains.
}

```

### Work Evidence

- Documentation Read:[http://dart.dev/null-safety]

### Blockers and Challenges

- NO Issues
### 💬 Mentor Feedback

(To be filled by Mentor):
