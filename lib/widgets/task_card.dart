import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task_card extends StatelessWidget {
  const Task_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        tileColor: Colors.white,
        title: Text("Title of task"),
        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Description of the task",
              style: TextStyle(color: Colors.grey),
            ),
            Text("Data: 17 April 2026"),

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    "New",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
