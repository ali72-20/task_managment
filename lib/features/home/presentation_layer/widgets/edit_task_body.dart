import 'package:flutter/cupertino.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/features/add_task/presentation_layer/widgets/add_task_form.dart';

class EditTaskBody extends StatelessWidget {
  const EditTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 32,),
        const Text("update your Task  Here", style: Styles.style24,),
        const SizedBox(height: 32,),
        AddTaskFrom(),
      ],
    );
  }
}
