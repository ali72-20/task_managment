import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/core/utilites/colors.dart';

class CategoryRowItem extends StatelessWidget {
  CategoryRowItem({super.key, required this.text, required this.opacity});

  String text;
  double opacity;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 20,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(opacity),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: Styles.style14.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
