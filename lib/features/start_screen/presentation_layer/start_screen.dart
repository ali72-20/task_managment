import 'package:flutter/material.dart';
import 'package:task_managment/features/start_screen/presentation_layer/widgets/start_screen_body.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
         body: StartScreenBody(),
      ),
    );
  }
}
