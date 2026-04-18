import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [
            SizedBox(),
            _buildTaskSummaryListView(),
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Task_card();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskSummaryListView() {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            margin: EdgeInsets.only(left: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: Column(
                children: [
                  Text("12", style: Theme.of(context).textTheme.titleMedium),
                  Text("New", style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
