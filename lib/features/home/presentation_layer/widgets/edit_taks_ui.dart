import 'package:flutter/material.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';
import 'edit_task_body.dart';


class EditTaksUi extends StatelessWidget {
   EditTaksUi({super.key, required this.task});
  TaskModel task;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: EditTaskBody(task: task,),
      ),
    );
  }
}
