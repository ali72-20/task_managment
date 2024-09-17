import 'package:flutter/material.dart';
import 'package:task_managment/features/start_screen/presentation_layer/start_screen.dart';

void main() {
  runApp(const TaskManagment());
}

class TaskManagment extends StatelessWidget {
  const TaskManagment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

