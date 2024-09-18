import 'package:flutter/material.dart';
import '../../../../core/utilites/Styles.dart';

class CustomeText extends StatelessWidget {
  CustomeText({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: Styles.style20.copyWith(color: Colors.white),
      ),
    );
  }
}
