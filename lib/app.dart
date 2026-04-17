import 'package:flutter/material.dart';
import 'package:task_hub/ui/forgot_password_verify_otp_screen.dart';
import 'package:task_hub/ui/fotgot_password_email_screen.dart';
import 'package:task_hub/ui/main_bottom_nav_holder_screen.dart';
import 'package:task_hub/ui/reset_password_screen.dart';
import 'package:task_hub/ui/sign_in_screen.dart';
import 'package:task_hub/ui/sign_up_screen.dart';
import 'package:task_hub/ui/splash_screen.dart';

class Taskmanager extends StatelessWidget {
  const Taskmanager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,

          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        scaffoldBackgroundColor: Colors.green.shade50
      ),

      routes: <String, WidgetBuilder>{
        SplashScreen.name: (_) => SplashScreen(),
        SignInScreen.name: (_) => SignInScreen(),
        SignUpScreen.name: (_) => SignUpScreen(),
        FotgotPasswordEmailScreen.name: (_) => FotgotPasswordEmailScreen(),
        ForgotPasswordVerifyOtpScreen.name: (_) =>
            ForgotPasswordVerifyOtpScreen(),
        ResetPasswordScreen.name: (_) => ResetPasswordScreen(),
        MainBottomNavHolderScreen.name:(_)=> MainBottomNavHolderScreen()
      },
      initialRoute: SplashScreen.name,
    );
  }
}
