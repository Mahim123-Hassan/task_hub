import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_hub/widgets/tm_app_bar.dart';

import '../widgets/photo_picker.dart';
import '../widgets/screen_background.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});
  static const String name = '/UpdateProfileScreen';

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tmappbar(
        fromUpdateProfile: true,
      ),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(

              spacing: 8,
              crossAxisAlignment: .start,
              children: [

                SizedBox(height: 36),
                Text(
                  "Update Profile",

                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),

                GestureDetector(child: photo_picker(),
                  onTap: (){},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    hintText: "Email",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.drive_file_rename_outline),
                    hintText: "First name",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.drive_file_rename_outline),
                    hintText: "Last name",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    hintText: "Mobile",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.lock),
                    hintText: "Password",
                  ),
                ),

                FilledButton(
                  onPressed: _onTapUpdateButton,
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapUpdateButton() {}
}

