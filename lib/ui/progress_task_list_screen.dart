import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class Progress_task_list_screen extends StatefulWidget {
  const Progress_task_list_screen({super.key});

  @override
  State<Progress_task_list_screen> createState() =>
      _Progress_task_list_screenState();
}

class _Progress_task_list_screenState extends State<Progress_task_list_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Task_card();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
      ),
    );
  }
}
