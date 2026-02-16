# Daily Intern Log: [2026/02/16]

### **Intern: Rukesh Shivahari**

### Tasks Completed

# Day 01: [Terminal Setup and Command Basics].

- [ 1] Installation and Setup: As instructed, installed and setup the flutter '3.35.1'. Had peek on why this specific flutter version 3.35.1 was recommended.

- [ 2] Learned Linux and its basic commands: Learned about Unix/MacOs terminal and shell. Researched on basic concepts of Linux  and its commonly used commands like : echo, cd, find, nano, cat , clear, touch, pwd, ls, man, history etc.
Even learned some basic keyboard shortcuts in zsh terminal.

- [ 3] Researched on the file operations and navigation through shell commands : Worked on different file operations with its permissions and actions. Got familiar with different file editor modes like vim and nano. Some of the commands i learned from these file operations and navigation are cp, rm, mv, find, chmod, chown, tail, head, diff etc

- [4] Setup homebrew : Upgraded and updated the homebrew package. Tried different brew commands like : brew install, brew uninstall, brew upgrade, brew list, brew search , brew info etc

- [5] Practice Task : Completed the practice task that was assigned today. 

### Technical "Today I Learned" (TIL)

- I learned about the general format of Linux commands which is : <command> -/--<options> <arguments>. So I tried many commands with different options.
- I learned about linux file system hierarchy which follows an inverted tree like structure as root is at the topmost part. So I had a great time on picturing the directory and files path and depths.
- I learnt one of the ways of optimizing the hectic, repeated tasks using bash scripting where we can store different sequence of task completing commands and executing it.
- During file operations and navigation I was introduced to the file permission like read, write and execute and different user categories like Owner, Groups and Others.
- Furthermore I got to know about source vs binary entities which are just like two sides of a coin and about package dependencies and its huge contributions.



- Code:

    1. Practice Task :
        -  mkdir intern_week1
        -  cd intern_week1
        - touch day1.txt notes.txt
        - vim day1.txt
        - cat day1.txt
            This is day one content
        - nano notes.txt
        - cat notes.txt
            This is the note file.

    2. Bash Scripting
        - touch date.sh
        - vim date.sh
            #!/bin/bash
            echo "Today is " `date`
        - sh date.sh 
            Today is   Mon Feb 16:20:08 +0545 2026
        
- Documentation Read: 
https://www.freecodecamp.org/news/learn-linux-for-beginners-book-basic-to-advanced/#heading-part-1-introduction-to-linux



### Blockers and Challenges
- None

### 💬 Mentor Feedback
