import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/assets.dart';
import 'package:task_managment/features/start_screen/presentation_layer/widgets/start_screen_buttons.dart';
import '../../../../core/utilites/Styles.dart';

class StartScreenBody extends StatelessWidget {
  const StartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(aspectRatio: 5 / 3, child: Image.asset(start_image)),
              const SizedBox(height: 128,),
              const Text(
                textAlign: TextAlign.center,
                "Manage Your Life Here!",
                style: Styles.style35,
              ),
              const SizedBox(height: 16,),
              const Text("Organize your daily tasks" , style: Styles.style14,),
              const SizedBox(height: 64,),
              const StartScreenButtons()
            ],
          ),
        ),
      ),
    );
  }
}
