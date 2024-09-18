import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/app_routes.dart';
import 'package:task_managment/core/widgets/custom_login_and_register_button.dart';

import '../../../../core/utilites/Styles.dart';
import 'input_feild.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  TextEditingController mailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 217,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              textAlign: TextAlign.center,
              "Login here",
              style: Styles.style30,
            ),
            const SizedBox(
              height: 64,
            ),
            InputFeilde(
              hint: 'Email',
              controller: mailController,
              suffix_icon: Icons.mail,
            ),
            const SizedBox(
              height: 32,
            ),
            InputFeilde(
              hint: 'Password',
              controller: passowrdController,
              suffix_icon: Icons.password,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomLoginAndRegisterButton(
              text: 'Sign in',
              onPress: () {
                GoRouter.of(context).pushReplacement(AppRoutes.kHomePath);
              },
            ),
            const SizedBox(
              height: 64,
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRoutes.kRegisterPath);
              },
              child: Text(
                'Create a new account',
                style: Styles.style14.copyWith(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
