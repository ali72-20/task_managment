import 'package:flutter/material.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/login_body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: LoginBody(),
    );
  }
}
