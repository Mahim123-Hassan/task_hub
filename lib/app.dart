import 'package:flutter/material.dart';
import 'package:task_hub/ui/splash_screen.dart';

class Taskmanager extends StatelessWidget {
  const Taskmanager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: SplashScreen(),
    );
  }
}
