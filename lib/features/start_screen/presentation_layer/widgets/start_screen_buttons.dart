import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/app_routes.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/start_screen/presentation_layer/widgets/button_item.dart';

class StartScreenButtons extends StatelessWidget {
  const StartScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonItem(
          button_text: 'Login',
          button_color: kPrimaryColor,
          font_color: Colors.white,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRoutes.kLoginPath);
          },
        ),
        ButtonItem(
          button_text: 'Register',
          button_color: Colors.white,
          font_color: Colors.black,
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRoutes.kRegisterPath);
          },
        ),
      ],
    );
  }
}
