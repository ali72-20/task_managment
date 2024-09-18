import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilites/Styles.dart';

class LoginTexts extends StatelessWidget {
  const LoginTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Text(
        textAlign: TextAlign.center,
        "Welcome back\n you've been missed!",
        style: Styles.style20.copyWith(color: Colors.white),
      ),
    );
  }
}
