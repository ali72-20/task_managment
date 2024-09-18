import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/app_routes.dart';

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

