import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utilites/Styles.dart';
import '../../../../core/utilites/app_routes.dart';
import '../../../../core/widgets/custom_login_and_register_button.dart';
import 'input_feild.dart';

class RegisterForm extends StatelessWidget {
   RegisterForm({super.key});

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .7378,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          children: [
            const Text(
              textAlign: TextAlign.center,
              "Create Account",
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
              controller: passwordController,
              suffix_icon: Icons.password,
            ),
            const SizedBox(
              height: 32,
            ),
            InputFeilde(
              hint: 'Confirm password',
              controller: confirmPasswordController,
              suffix_icon: Icons.confirmation_number,
            ),
            CustomLoginAndRegisterButton(
              text: 'Sign up',
              onPress: () {
                GoRouter.of(context).pushReplacement(AppRoutes.kHomePath);
              },
            ),
            TextButton(
              onPressed: (){
                GoRouter.of(context).pushReplacement(AppRoutes.kLoginPath);
              }
              ,
              child:  Text('Already have an account', style: Styles.style14.copyWith(color: Colors.black),),
            )
          ],
        ),
      ),
    );;
  }
}
