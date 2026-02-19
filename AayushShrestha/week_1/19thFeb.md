cat > 19feb.md << 'EOF'
# Daily Intern Log: [2026/02/19]

### **Intern: Aayush Shrestha**

### Day 04: [Flutter Setup, First App & Dart Basics]

### Tasks Completed

- [ ] Flutter Environment Setup: Verified Flutter installation, configured environment variables, ran `flutter doctor`, and completed required setup.  
- [ ] Android Toolchain Setup: Accepted Android SDK licenses and verified device/emulator connectivity.  
- [ ] First Flutter App: Created and successfully ran the first Flutter application.  
- [ ] Flutter Project Exploration: Understood basic project folder structure and key files.  
- [ ] Dart Language Basics: Practiced variables, data types, functions, conditional statements, loops, and null safety.  
- [ ] Dart OOP Basics: Learned class creation, constructors, instance variables, and methods.  

### Technical "Today I Learned" (TIL)

- Flutter setup workflow and environment configuration.  
- Creating and running a Flutter project.  
- Understanding Flutter project structure.  
- Dart syntax and basic programming constructs.  
- Object-oriented programming basics using Dart classes.  

### Code:

1. Flutter Setup & First App:
    - flutter doctor
    - flutter doctor --android-licenses
    - flutter create first_app
    - cd first_app
    - flutter run
    - flutter pub get

2. Dart Basics:
    - dart --version
    - dart eval 'print("Hello, Dart!")'

3. Dart Class Example:
    ```dart
    class Intern {
      String name;
      int roll;

      Intern(this.name, this.roll);

      void show() {
        print("Name: $name, Roll: $roll");
      }
    }

    void main() {
      Intern i1 = Intern("Aayush", 21);
      i1.show();
    }
    ```

### Blockers and Challenges

- Minor environment setup issues, resolved through troubleshooting.

### 💬 Mentor Feedback
EOF
