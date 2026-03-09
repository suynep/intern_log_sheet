# Daily Intern Log: Day 1

### **Intern: Suchana Pokhrel**

## Focus: Flutter UI Widgets

### Tasks Completed

- Learned about flutter flexible layout
- Understood about different scrollable and button widgets
- Learned about input widgets.
- Learned about app structure

### Technical "Today I Learned" (TIL)

Code:
import 'package:flutter/material.dart';

class AppStructure extends StatefulWidget {
  const AppStructure({super.key});

  @override
  State<AppStructure> createState() => _AppStructureState();
}

class _AppStructureState extends State<AppStructure> {
  int selectedItem = 0;
  void alertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Delete?'),
        content: Text('Are you sure?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void simpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(child: Text('Option 1')),
            SimpleDialogOption(child: Text('Option 2')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'User'),
              Tab(text: 'Admin'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text('Suchana'),
                  accountEmail: Text('pokhrelsuchana@gmail.com'),
                ),
              ),
              ListTile(
                title: Text('My Accounts'),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 50,
                  child: Text('Me'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () => alertDialog(),
                child: Text('Press'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => simpleDialog(),
                child: Text('Press'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
          currentIndex: selectedItem,
          onTap: (value) => setState(() {
            selectedItem = value;
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Open Modal Sheet'),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Close'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

### Work Evidence

- Documentation Read:[https://docs.flutter.dev/ui/widgets]

### Blockers and Challenges

- None
### 💬 Mentor Feedback

(To be filled by Mentor):
