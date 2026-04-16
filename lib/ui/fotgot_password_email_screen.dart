import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_background.dart';
import 'forgot_password_verify_otp_screen.dart';

class FotgotPasswordEmailScreen extends StatefulWidget {
  const FotgotPasswordEmailScreen({super.key});
  static const String name = '/FotgotPasswordEmailScreen.name';

  @override
  State<FotgotPasswordEmailScreen> createState() =>
      _FotgotPasswordEmailScreenState();
}

class _FotgotPasswordEmailScreenState extends State<FotgotPasswordEmailScreen> {
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
                "Your Email address",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "A 6 digits verification OTP will be send to your email address",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: "Email",
                ),
              ),

              FilledButton(
                onPressed: _onTapSubButton,
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
    Navigator.pop(context);
  }

  void _onTapSubButton() {
    Navigator.pushNamed(context, ForgotPasswordVerifyOtpScreen.name);
  }
}
