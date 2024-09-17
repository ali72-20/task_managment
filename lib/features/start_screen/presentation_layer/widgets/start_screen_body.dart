import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/assets.dart';

import '../../../../core/utilites/Styles.dart';

class StartScreenBody extends StatelessWidget {
  const StartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
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
              const Text("Organize your daily tasks" , style: Styles.style14,)
            ],
          ),
        ),
      ),
    );
  }
}
