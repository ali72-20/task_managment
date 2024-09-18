import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/core/utilites/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(
        textAlign: TextAlign.center,
        "Task Tracker",
        style: Styles.style20.copyWith(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: kPrimaryColor,
    );
  }
}
