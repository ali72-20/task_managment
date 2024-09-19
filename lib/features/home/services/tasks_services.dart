import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/home/data_layer/apis/get_tasks.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/tasks_list_view.dart';

class TasksServices extends StatefulWidget {
  const TasksServices({super.key});

  @override
  State<TasksServices> createState() => _TasksServicesState();
}

class _TasksServicesState extends State<TasksServices> {
  var future;
  final pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = GetTasks(Dio()).getTasks();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TaskModel>?>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TasksListView(tasks: snapshot.data!,);
        } else if (snapshot.hasError) {
          return const Text("Error found");
        } else {
          return const Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
          );
        }
      },
    );
  }
}
