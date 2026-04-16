import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String name = '/SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              spacing: 8,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: 60),
                Text(
                  "join With Us",

                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
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
                  onPressed: _onTapSignUpButton,
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
                SizedBox(height: 24),
                Center(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          text: "Already have an account?",
                          children: [
                            TextSpan(
                              text: "Sign In",
                              style: TextStyle(color: Colors.green),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTapSignInButton,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  void _onTapSignUpButton() {}
}
