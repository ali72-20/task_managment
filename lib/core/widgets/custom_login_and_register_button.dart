import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/core/utilites/colors.dart';

class CustomLoginAndRegisterButton extends StatelessWidget {
  CustomLoginAndRegisterButton(
      {super.key, required this.text, required this.onPress});

  String text;
  dynamic onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            text,
            style: Styles.style20.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
