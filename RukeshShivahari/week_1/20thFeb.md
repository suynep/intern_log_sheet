# Daily Intern Log: [2026/02/20]

### **Intern: Rukesh Shivahari**

### Day 05: [Flutter Setup & Basic Commands].

### Tasks Completed

    [] Setup flutter in system : Downloaded and extracted fluttter in the specified path like ~/development/fluttter and configured the flutter to be recognized by the system and managed its environment to make it work effectively and smoothly.

    [] Introduction to Flutter and its architecture : Researched on what flutter really is, and its core architecture.

    [] Project structure : Read and understood the project structure of flutter.
   
    [] Differences on Hot Reload vs Hot restart : 

    [] Why flutter version 3.35.1 ? : Researched on why this exact flutter version is preferred as for now.

    [] Practice Task : Completed the practice task that was assigned. 

### Technical "Today I Learned" (TIL)

    [] Learned about what flutter is and its core architecture. It makes sure that you know well about how flutter works behind the scenes.

    [] Got to know about different usefule commands that is commonly used in the flutter during development like flutter doctor, flutter run , flutter --version, flutter build --profile, flutter pub add , flutter pug get and many more.

    [] Understood the main differences between Hot Reload and Hot Restart in flutter and its impact on the development phase. Additionall, got to know in which cases Hot Reload works and cases where Hot Restart becomes handy when Hot Reload fails to work.

    [] Researched why flutter version 3.35.1 was recommended by our mentors. Like 3.35.1 is obviously patched or fixed from its predecessor (3.35.0).Like fixed the Windows SDK download issue.
    Whats new is that it has stateful hot reload so need for experimental flag,
    Experimental Widget Previews helps developer to view widgets in isolation for faster UI iteration without launching the full app
   
    Why preferred more than newer version?
    It is stable version,
    It is compatible with its dart version (3.9.0)

    1. Practice Task :

       - flutter doctor
        
            Doctor summary (to see all details, run flutter doctor -v):
            [✓] Flutter (Channel stable, 3.35.1, on macOS 15.7 24G222 darwin-x64,
                locale en-NP)
            [✓] Android toolchain - develop for Android devices (Android SDK
                version 36.1.0)
            [✓] Xcode - develop for iOS and macOS (Xcode 16.3)
            [✓] Chrome - develop for the web
            [✓] Android Studio (version 2024.2)
            [✓] VS Code (version 1.96.2)
            [✓] Connected device (2 available)
            [✓] Network resources

        - flutter create todoapp
        - cd todoapp
        - flutter run / flutter run -d chrome
            Launching lib/main.dart on Chrome in debug mode...

        - flutter pub add google_fonts
        
        dependencies:
            flutter:
                sdk: flutter

            google_fonts: ^8.0.1




- Documentation Read: 
https://docs.flutter.dev/
https://vibe-studio.ai/insights/hot-reload-vs-hot-restart-in-flutter-speeding-up-your-development-cycle

### Blockers and Challenges
- None

### 💬 Mentor Feedback

