import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_hub/ui/sign_in_screen.dart';

import '../widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});
  static const String name = '/ResetPasswordScreen';

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 60),
              Text(
                "Reset Password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Minimum length of password should more the 8 letters",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: "New Password",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: "Confirm Password",
                ),
              ),

              FilledButton(
                onPressed: _onTapSubmitButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    text: "have an account?",
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      SignInScreen.name,
      (protected) => false,
    );
  }

  void _onTapSubmitButton() {}
}
