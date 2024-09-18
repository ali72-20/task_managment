import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        textAlign: TextAlign.center,
        "Task Tracker",
        style: Styles.style20,
      ),
      centerTitle: true,
    );
  }
}
