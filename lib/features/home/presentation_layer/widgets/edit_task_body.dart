import 'package:flutter/cupertino.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/features/add_task/presentation_layer/widgets/add_task_form.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/edite_task_form.dart';

class EditTaskBody extends StatelessWidget {
   EditTaskBody({super.key, required this.task});
  TaskModel task;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 32,),
        const Text("update your Task  Here", style: Styles.style24,),
        const SizedBox(height: 32,),
        EditeTaskForm(task: task,),
      ],
    );
  }
}
