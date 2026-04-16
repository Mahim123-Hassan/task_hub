import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_hub/ui/sign_up_screen.dart';
import 'package:task_hub/widgets/screen_background.dart';

import 'fotgot_password_email_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                "Get Started With",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(suffixIcon: Icon(Icons.email),
                  hintText: "Email")),
              TextFormField(decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                  hintText: "Password")),

              FilledButton(
                onPressed: _onTapSignInButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapForgotPasswordButton,
                      child: Text("Forgot Password"),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "Don't have ana account?",
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(color: Colors.green),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignUpButton,
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
    );
  }

  void _onTapSignInButton() {}

  void _onTapForgotPasswordButton() {
    Navigator.pushNamed(context, FotgotPasswordEmailScreen.name);
  }

  void _onTapSignUpButton() {
    Navigator.pushNamed(context, SignUpScreen.name);
  }
}
