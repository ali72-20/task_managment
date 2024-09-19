import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/tasks_list_view.dart';
import 'package:task_managment/features/home/services/tasks_services.dart';
import 'package:task_managment/main.dart';



class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hi ${userModel.username}!",style: Styles.style24.copyWith(color: kPrimaryColor),),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            textAlign: TextAlign.start,
            'Tasks',
            style: Styles.style24.copyWith(color: Colors.black),
          ),
        ),
        const TasksServices(),
      ],
    );
  }
}
