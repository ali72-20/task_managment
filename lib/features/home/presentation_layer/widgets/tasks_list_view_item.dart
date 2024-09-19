import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';

class TasksListViewItem extends StatelessWidget {
   TasksListViewItem({super.key, required this.task});
  TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(.999)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(task.title),
             Text(task.description),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.timer, color: Colors.blueAccent,),
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.5),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(task.statue, style: Styles.style14.copyWith(color: Colors.blue),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
