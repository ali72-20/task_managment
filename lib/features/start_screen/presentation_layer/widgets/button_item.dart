import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/colors.dart';

import '../../../../core/utilites/Styles.dart';

class ButtonItem extends StatelessWidget {
  ButtonItem(
      {super.key,
      required this.button_text,
      required this.button_color,
      required this.font_color,
      required this.onPressed});

  String button_text;
  Color button_color;
  Color font_color;
  dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
      onPressed: onPressed,
      child: Text(
        button_text,
        style: Styles.style20.copyWith(
          color: font_color,
        ),
      ),
    );
  }
}
