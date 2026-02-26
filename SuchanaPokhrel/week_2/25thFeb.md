# Daily Intern Log: Day 3

### **Intern: Suchana Pokhrel**

## Focus: Collections and List Manipulation
### Tasks Completed

- Learned about list, sets, maps and all their methods.
- Understood how list can be manipulated.
- Learned about difference between sets and lists.
- Understood how large number of list can be generated.

### Technical "Today I Learned" (TIL)

Code:
```dart

void main() {
  List<int> numbers = [1, 2, 3, 4];
  numbers.addAll([5, 6, 1, 2]);
  print("The new added number is:$numbers");
  numbers.removeRange(6, 8);
  print("The number after removing from index 5 to 7: $numbers");
  var even = numbers.where((n) => n % 2 == 0).toList();
  print('The even number is: $even');
  var mapping_number = numbers.map((n) => n * 3).toList();
  print('The number after mapping the list into new number: $mapping_number');
  List<int> new_number = [7, 6, ...numbers];
  print('The list after using spread operator is: $new_number');
  new_number.sort();
  print('The new number after sorting: ${new_number}');

  //LOOPS--> For--EACH Loop
  var list_name = ['A', 'B', 'C'];
  list_name.forEach(print); //we just need to print this.

  var ages = {'Alice': 23};
  ages.forEach((name, age) => print('$name and $age'));

  list_name.asMap().forEach((index, value) => print('$index and $value'));

  //FOR IN LOOP
  for (int num in new_number) {
    if (num % 2 != 0) {
      //we can use this instead of for loop also
      print(num);
    }
  }
}
```

### Work Evidence

- Documentation Read:[https://dart.dev/language/built-in-types]

### Blockers and Challenges

- NO Issues
### 💬 Mentor Feedback

(To be filled by Mentor):
