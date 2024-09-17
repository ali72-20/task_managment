import 'package:flutter/material.dart';
import 'package:task_managment/features/login/presentation_layer/login_screen.dart';

void main() {
  runApp(const TaskManagment());
}

class TaskManagment extends StatelessWidget {
  const TaskManagment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}

