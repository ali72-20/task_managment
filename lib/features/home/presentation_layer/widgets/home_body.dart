import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/category_row.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/tasks_list_view.dart';

import 'in_progress_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryRow(),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(textAlign:TextAlign.start,'In Progress', style: Styles.style24,),
        ),
        const InProgressListView(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            textAlign: TextAlign.start,
            'Tasks',
            style: Styles.style24.copyWith(color: Colors.black),
          ),
        ),
        const TasksListView(),
      ],
    );
  }
}
