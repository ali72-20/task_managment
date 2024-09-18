import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'login_form.dart';
import 'custom_texts.dart';

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
               CustomeText(text: "Welcome back\n you've been missed!"),
              const SizedBox(height: 51,),
              Expanded(child: LoginForm()),
            ],
          ),
        ),
      ),
    );
  }
}
