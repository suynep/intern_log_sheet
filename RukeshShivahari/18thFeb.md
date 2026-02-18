# Daily Intern Log: [2026/02/18]

### **Intern: Rukesh Shivahari**

### Day 03: [Process & Package Management].

### Tasks Completed

    [] Researched on Package Management : Familirity with package and ways of managing packages.Walkthrough on package management in linux, using homebrew managed different packages in the system.

    [] Process and its types(Foreground processes and Background processes): Definition of process in terms of shell and different types of process like foreground processes and background processes.
    Ways of handling these different types of processes.

    [] Familirity with system monitoring  : Got to know about most commonly used tools for system monitoring in the terminal like top, htop, btop and glances.Got to know their features and importance of system monitoring.
   
    [] Flutter commands : Researched on some basic flutter commands and implemented them.

    [] Dart practice : Light practice on some dart project through dart documentation.

    [] Practice Task : Completed the practice task that was assigned today. 

### Technical "Today I Learned" (TIL)

- Got to know about processes and comparison between foreground and background processes. I even knew the scenarios where it is best to execute and command/task in background.
- I learned about package management and ways of managing package using homebrew which a popular open source package manager. I go familiar with some of its basic commands like brew install, brew info, brew update etc. I got to know some of its core concepts like formulae, bottles, casks.
- I learned how system monitoring is used to diagnose the system resoures, CPU performance, disk utilization, memory usage and netork I/O. I even learned the uniques features of these system monitoring tools through terminal like top, htop and how glances is preferred for remote monitoring through network.
- With remaining additional time, practiced some dart programs and get to know some important flutter commands. 

- Code:

    1. Practice Task :

        i. install htop:
            - brew update
            - brew install htop

        ii. Workaround brew:
            - brew install keka
            - brew list
            - brew list --formula
            - brew list --cask
            - brew search keka
                => Casks
                keka ✔ 
            - brew uninstall keka
                Uninstalling Cask keka
            - (sleep 20 && curl "https://pokeapi.co/api/v2/pokemon/ditto") & 
               [1] 66241

            - ps

                66241 ttys002    0:00.00 /bin/zsh -il
                66242 ttys002    0:00.00 sleep 20

            - After 20 seconds,
                [1]  + 66241 done       ( sleep 20 && curl "https://pokeapi.co/api/v2/pokemon/ditto"; )

            - sleep 20 &
                [1] 69952

            - kill %1
                [1]  + 69952 terminated  sleep 20  



- Documentation Read: 
https://machaddr.substack.com/p/a-guide-to-linux-system-monitoring
https://www.everythingdevops.dev/blog/linux-background-and-foreground-process-management
https://dart.dev/learn/tutorial/first-app


### Blockers and Challenges
- None

### 💬 Mentor Feedback
