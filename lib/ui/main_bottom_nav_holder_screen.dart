import 'package:flutter/material.dart';
import 'package:task_hub/ui/cancelled_task_list_screen.dart';
import 'package:task_hub/ui/completed_task_list_screen.dart';
import 'package:task_hub/ui/new_task_list_screen.dart';
import 'package:task_hub/ui/progress_task_list_screen.dart' hide Progress_task_list_screen;

import '../widgets/tm_app_bar.dart';

class MainBottomNavHolderScreen extends StatefulWidget {
  const MainBottomNavHolderScreen({super.key});
  static const String name = '/ MainBottomNavHolderScreen';

  @override
  State<MainBottomNavHolderScreen> createState() =>
      _MainBottomNavHolderScreenState();
}

class _MainBottomNavHolderScreenState extends State<MainBottomNavHolderScreen> {
  int _selectedIndex=0;
  final List<Widget> _screens=[
    NewTaskListScreen(),
    Cancelled_task_list_screen(),
    Cancelled_task_list_screen(),
    Completed_task_list_screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tmappbar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index){
          _selectedIndex=index;
          setState(() {

          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'New',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_outlined),
            label: "Cancelled",
          ),
          NavigationDestination(icon: Icon(Icons.done), label: "Completed"),
        ],
      ),
    );
  }
}
