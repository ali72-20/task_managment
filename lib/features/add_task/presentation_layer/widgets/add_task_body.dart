import 'package:flutter/cupertino.dart';
import 'package:task_managment/core/utilites/Styles.dart';

class AddTaskBody extends StatelessWidget {
  const AddTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 32,),
        Text("Add new Task  Here", style: Styles.style24,)
      ],
    );
  }
}
