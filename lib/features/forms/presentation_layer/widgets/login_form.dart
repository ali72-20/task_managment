import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/app_routes.dart';
import 'package:task_managment/core/utilites/custom_toast.dart';
import 'package:task_managment/core/widgets/custom_login_and_register_button.dart';

import '../../../../core/utilites/Styles.dart';
import '../../data_layer/Apis/login.dart';
import 'input_feild.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  TextEditingController mailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

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
            Form(
              key: _formkey,
              child: Column(
                children: [
                  InputFeilde(
                    hint: 'username',
                    controller: mailController,
                    suffix_icon: Icons.account_box_rounded,
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
                ],
              ),
            ),
            CustomLoginAndRegisterButton(
              text: 'Sign in',
              onPress: () async {
               if(_formkey.currentState!.validate()){
                 var username = mailController.text;
                 var password = passowrdController.text;
                 List<String>? response = await Login(Dio()).login_auth(username: username,password: password);
                 if(response != null && !response.isEmpty && response[0] == "Ok"){
                   GoRouter.of(context).pushReplacement(AppRoutes.kHomePath);
                 }else{
                   CustomToast.showCustomToast(msg:  "Invalid user name or password", color: Colors.red);
                 }
               }
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
