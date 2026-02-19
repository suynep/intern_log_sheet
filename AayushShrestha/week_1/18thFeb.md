cat > 18feb.md << 'EOF'
# Daily Intern Log: [2026/02/18]

### **Intern: Aayush Shrestha**

### Day 03–05: [Process Management, Git Fundamentals Revisit & Flutter/Dart Setup]

### Tasks Completed

- [ ] Process Management: Learned about processes, foreground vs background processes, and system monitoring.  
- [ ] Package Management: Installed, searched, listed, updated, upgraded, and uninstalled packages using `brew`.  
- [ ] Process Control: Ran processes in background, identified PID using `ps`, and killed processes with `kill` and `kill -9`.  
- [ ] Git Fundamentals Revisit: Reviewed working directory, staging area, repository, commits, branches, and merges.  
- [ ] Git Practice: Initialized repository, made multiple commits, created feature branch, added changes, and merged branch into main.  
- [ ] Flutter & Dart Setup: Installed Flutter via Homebrew, ran Flutter doctor, accepted Android licenses, created Flutter project, and practiced basic Dart commands.  

### Technical "Today I Learned" (TIL)

- Difference between foreground and background processes.  
- System monitoring tools: `ps`, `top`, `htop`.  
- Process control commands and package management workflow with Homebrew.  
- Git concepts review and practical branching/merging exercises.  
- Flutter setup workflow and basic Dart syntax.  

### Code:

1. Process & Package Management:
    - ps
    - top
    - htop
    - sleep 100 &
    - ps aux | grep sleep
    - kill <PID>
    - kill -9 <PID>
    - brew install wget
    - brew list
    - brew search wget
    - brew uninstall wget
    - brew update
    - brew upgrade

2. Git Fundamentals Revisit:
    - git init
    - git status
    - git add .
    - git commit -m "feat: revisit git fundamentals"
    - git log
    - git diff
    - git branch feature/test
    - git checkout feature/test
    - git add .
    - git commit -m "feat: add test changes"
    - git checkout main
    - git merge feature/test

3. Flutter & Dart Setup:
    - brew install --cask flutter
    - export PATH="$PATH:`pwd`/flutter/bin"
    - flutter doctor
    - flutter doctor --android-licenses
    - flutter create my_app
    - cd my_app
    - flutter run
    - dart --version
    - dart eval 'print("Hello, Dart!")'

### Documentation Read:

- https://www.conventionalcommits.org/en/v1.0.0/  
- https://conventional-branch.github.io/  
- https://dart.dev/language/classes  

### Blockers and Challenges

- None

### 💬 Mentor Feedback
EOF
