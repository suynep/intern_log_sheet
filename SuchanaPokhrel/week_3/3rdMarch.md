# Daily Intern Log: Day 1

### **Intern: Suchana Pokhrel**

## Focus: Dart OOP Concepts

### Tasks Completed

- Learned about classes and objects 
- Understood about different types of constructors.
- Learned about getters and setters and complex data hiding using abstraction.
- Learned about difference between extends and implements.

### Technical "Today I Learned" (TIL)

Code:
```dart
class Book {
  //properties
  String title;
  String author;
  int pages;
  int isbn;
  static String genre = 'Romance';

  Book(this.title, this.author, this.pages, this.isbn);

  void read() {
    print("I read the book with the title: $title");
  }

  void bookmark() {
    print("I bookmarked the book $pages");
  }

  void getInfo() {
    print("I want the $isbn number to give me informationS.");
  }

  static void genreBook() {
    print("The book is of $genre");
  }
}

void main() {
  Book.genre;
  Book.genreBook(); //these are static method and static variables

  Book b = Book('Twisted', 'Ana', 112, 12344);
  print(b.title);
  print(b.author);
  print(b.pages);
  print(b.isbn);
}
```

### Work Evidence

- Documentation Read:[https://dart-tutorial.com/object-oriented-programming/]

### Blockers and Challenges

- had some issues regarding factory constructor but later understood.
### 💬 Mentor Feedback

(To be filled by Mentor):
