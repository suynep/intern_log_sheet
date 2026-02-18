# Daily Intern Log: 18th Feb. 2026

### **Intern: Suyash Nepal**

## Focus: Learning
### Tasks Completed

- [x] **Day 03 Readings**: Read about Linux Processes *(OS Processes in general)*, the PCB (Process Control Block), Linux-specific Process States (running, sleeping, Uninterruptible sleep, Stopped, Zombie), Foreground vs. Background Processes (`fg`, `bg`, `&`, `fg %1` etc.), System Monitoring tools (`top`, `htop`, `btop`, `ps`), Process Priorities (Niceness number), Package management using `brew` and `apt` (since I use Ubuntu). 
- [x] **Day 03 Practice Task**: View the commands `ps`, `top`, `htop`, `kill`, `sudo`, `brew` in action (the practice usage can be found in the **Work Evidence** section below)

### Technical "Today I Learned" (TIL)

> The above took me only around 3 hours to complete. In the remaining 4.5 hrs, I: 
>   1. Started working on a [Habitica Clone](https://github.com/suynep/habitica_clone) in Flutter to understand:
>       - Basics of State Management
>       - The Philosophy of "Everything is a Widget" in Flutter
>       - The Different types of Widgets in Flutter
>       - UI Overflow Handling Mechanisms (`Flexible`, `Expanded`, `ConstrainedBox`)
>   2. Learned about Lifting the state up from [](https://github.com/brianegan/flutter_architecture_samples/tree/main/vanilla) and [](https://legacy.reactjs.org/docs/lifting-state-up.html)

- About Linux Processes and Package Management Utilities/Tools
- Concept/Tool: Process vs. Threads, Process Isolation on Kernel-level using PCBs, Priorities in the Linux OS using Niceness Numbers (*higher number = lower priority*, ranging from -20 to 19), `brew` & `apt` have similar commands in regards to package management
- Key Takeaway: Monitoring the System and Processes and managing packages using CLI proves useful when doing an SSH into remote server for administration.
- Code: See *Work Evidence* section for examples that were practiced. The snippet for the practice task will be mentioned below:


> 1. `ps`: reports a snapshot of the current processes
> 2. `top`: display Linux Processes in an real-time fashion
> 3. `htop`: More user friendly (compared to `top`), but the core functionality remains similar
> 4. `kill`: send a signal to a process
> 	- `kill -l` lists all the available `signals` that can be sent to the existing processes, specified by their `pid` (Process ID)
> 		- **Example Usage**:
> 			```bash
> 			# Open two terminal panes/windows (can use multiplexers of your choice)
> 			# In the first one, run:
> 			vim
> 			# In the second one, run:
> 			ps -ae | grep vim # to grab the pid (the first number in the output)
> 			# kill the process:
> 			kill -KILL <pid>
> 			# Note that the vim program is killed in the first terminal pane/window
> 			```
> 	- `kill -9`: Note that doing `kill -l` (to list all available signals that can be sent), outputs the following:
> 		- `HUP INT QUIT ILL TRAP IOT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH POLL PWR SYS`
> 		- The `KILL` signal is the `9th` signal in the list, therefore, doing `kill -9` is equivalent to doing: `kill -KILL` (*alternative representation*) 
> 5. `sudo`: Allows trusted users (users in the `sudo` group) to perform administrative (privileged) tasks without having to log in as the root user. `sudoers` file typically manages the access level of `sudo` command. That is, in the `/etc/sudoers` file (that should always be edited using safe commands like `visudo`), the line `%sudo ALL=(ALL:ALL) ALL` indicates that the *users* of the `sudo` group can execute ALL commands!
> 	- To add a user to `sudo` group, one can use `usermod -aG sudo <username>` (as a superuser or one with `sudo` access) (`-a` is an alias for `--append`, `-G` is for indicating the group; therefore, append to the said group) {[ref](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/configuring_basic_system_settings/managing-sudo-access_configuring-basic-system-settings)} 
> 6. `brew <command>`: Mentioned in *Topics to learn, Q. 4*

### Work Evidence

- Link for the Unified `.md` file containing **Notes**: [Notes Link](https://gist.github.com/suynep/32d435c95c5e11ece2fc56752f918f02)

### Blockers and Challenges

- None today! :)

### 💬 Mentor Feedback

