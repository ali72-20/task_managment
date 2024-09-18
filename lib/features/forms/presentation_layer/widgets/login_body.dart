import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'login_form.dart';
import 'login_texts.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child:  Column(
            children: [
              const LoginTexts(),
              const SizedBox(height: 64,),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
