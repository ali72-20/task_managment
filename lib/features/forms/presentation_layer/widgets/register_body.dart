import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/custom_texts.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/register_form.dart';

import '../../../../core/utilites/colors.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
              CustomeText(text: 'Create an account\n so you can manage your tasks'),
              const SizedBox(height: 64,),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}


