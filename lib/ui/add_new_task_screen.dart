import 'package:flutter/material.dart';
import 'package:task_hub/widgets/screen_background.dart';
import 'package:task_hub/widgets/tm_app_bar.dart';
class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});
  static const String name ='/AddNewTaskScreen.name';

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tmappbar(),
      body: ScreenBackground(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 8,
          children: [


          SizedBox(height: 36,),
          Text("Add New task screen",style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 16,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(height: 8,),
            FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined))
        ],),
      )),
    );
  }
}
