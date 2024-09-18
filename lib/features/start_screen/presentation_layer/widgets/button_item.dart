import 'package:flutter/material.dart';
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
      style: ElevatedButton.styleFrom(
        backgroundColor: button_color,
        elevation: 8,
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          button_text,
          style: Styles.style20.copyWith(
            color: font_color,
          ),
        ),
      ),
    );
  }
}
