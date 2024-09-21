import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utilites/Styles.dart';
import '../../../../core/utilites/app_routes.dart';
import '../../../../core/utilites/custom_toast.dart';
import '../../../../core/widgets/custom_login_and_register_button.dart';
import '../../data_layer/Apis/register.dart';
import 'input_feild.dart';

class RegisterForm extends StatelessWidget {
   RegisterForm({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        height: MediaQuery.of(context).size.height - 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  "Create Account",
                  style: Styles.style30,
                ),
                const SizedBox(
                  height: 32,
                ),
                InputFeilde(
                  hint: 'username',
                  controller: usernameController,
                  suffix_icon: Icons.account_box,
                ),
                const SizedBox(
                  height: 32,
                ),
                InputFeilde(
                  hint: 'Email',
                  controller: emailController,
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
                const SizedBox(height: 24,),
                CustomLoginAndRegisterButton(
                  text: 'Sign up',
                  onPress: () async{
                    dynamic response = await Register(Dio()).register_auth(username: usernameController.text, mail: emailController.text, password: passwordController.text);
                    if(response[0] == "Ok"){
                      CustomToast.showCustomToast(msg: "User created Successfully", color: Colors.green);
                      GoRouter.of(context).pushReplacement(AppRoutes.kLoginPath);
                    }else{
                      CustomToast.showCustomToast(msg:  "Invalid user name or password", color: Colors.red);
                    }
                  },
                ),
                const SizedBox(height: 24,),
                TextButton(
                  onPressed: () async{
                    GoRouter.of(context).pushReplacement(AppRoutes.kLoginPath);
                  }
                  ,
                  child:  Text('Already have an account', style: Styles.style14.copyWith(color: Colors.black),),
                )
              ],
            ),
          ),
        ),

    );
  }
}
