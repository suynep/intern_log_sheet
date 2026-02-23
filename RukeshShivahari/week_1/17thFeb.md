# Daily Intern Log: [2026/02/17]

### **Intern: Rukesh Shivahari**

### Day 02: [File System + Permissions].

### Tasks Completed

    [] Setup Oh My Zsh (omz) : omz is like a framework for terminal prompting which is built on top of zsh. Installed and setup omz with the help of this command "sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    [] Basic concepts and commands of omz : Some basic commands like omz update, alias, omz --help, cd -1 etc.

    [] Researched on the file operations and navigation through shell commands : Worked on different file operations with its permissions and action. Some of the commands i learned from these file operations and navigation are cp, rm, mv, find, chmod, chown, tail, head, diff etc

    [] Github essentials : Researched on git rebase and git merge concepts.Apply standard format for the naming of branches in github. Did some Pull Request reviews and merge in the collaborative workspace in github.


    [] Practice Task : Completed the practice task that was assigned today. 

### Technical "Today I Learned" (TIL)

- I learned about the standard format of branch convention in github which is :[type]/[description]
- I learned how I can collectively copy many different files in a single command from source to destination like : cp {[lists of files]} [destination_path] and if the extension is similar then we can correspondingly do cp *.txt [destination_path]
- Learned about file permission like read, write and execute and different user categories like Owner, Groups and Others.
- I learned to know about configuring oh my zsh which is a popular framework used to manage and customize the Z shell and got to look over its themes, plugins.

- Code:

    1. Practice Task :
        - mkdir -p grandParentDir/parentDir/childDir
        - cd grandParentDir 
                ➜  grandParentDir
        - cd parentDir 
                ➜  parentDir
        - cd childDir
                ➜  childDir

        - touch childFile1.txt childFile2.txt
        - ls
            childFile1.txt childFile2.txt
        - cp *.txt ../
        - ../  
        - ls
            childDir       childFile1.txt childFile2.txt
        - cp {childFile1.txt,childFile2.txt} ../
        - cd ..
        - ls
            childFile1.txt childFile2.txt parentDir
        - ls
            grandParentFile1.txt grandParentFile2.txt parentDir

        - mv childFile1.txt grandParentFile1.txt
        - mv childFile2.txt grandParentFile2.txt
        - ls
            grandParentFile1.txt grandParentFile2.txt parentDir
        - cd parentDir
        - mv childFile1.txt parentFile1.txt
        - mv childFile2.txt parentFile2.txt
        - ls
            childDir        parentFile1.txt parentFile2.txt
        - cd childDir
        -  la
            total 0
            -rw-r--r--@ 1 mypc  staff     0B Feb 17 14:48 childFile1.txt
            -rw-r--r--@ 1 mypc  staff     0B Feb 17 14:48 childFile2.txt
        - chmod u+x childFile1.txt 
        - la
            total 0
            -rwxr--r--@ 1 mypc  staff     0B Feb 17 14:48 childFile1.txt
            -rw-r--r--@ 1 mypc  staff     0B Feb 17 14:48 childFile2.txt

        - chmod u-x childFile1.txt
        - chmod u-r childFile2.txt 
        -  la
            total 0
            -rw-r--r--@ 1 mypc  staff     0B Feb 17 14:48 childFile1.txt
            --w-r--r--  1 mypc  staff     0B Feb 17 14:48 childFile2.txt

        - cd ..
        - ls childDir        parentFile1.txt parentFile2.txt
        -  rm -ri childDir
            examine files in directory childDir? y
            remove childDir/childFile1.txt? y
            remove childDir/childFile2.txt? y
            remove childDir? y
        - ls 
            parentFile1.txt parentFile2.txt

        
- Documentation Read: 
https://ohmyz.sh/
https://github.com/ohmyzsh/ohmyzsh/wiki
https://conventional-branch.github.io/
https://www.atlassian.com/git/tutorials/merging-vs-rebasing

### Blockers and Challenges
- None

### 💬 Mentor Feedback
