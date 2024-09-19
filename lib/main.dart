import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/app_routes.dart';
import 'package:task_managment/features/forms/data_layer/user_model.dart';

void main() {
  runApp(const TaskManagment());
}

class TaskManagment extends StatelessWidget {
  const TaskManagment({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

UserModel userModel = UserModel(username: 'none', id: 0);