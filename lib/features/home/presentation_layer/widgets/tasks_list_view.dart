import 'package:flutter/cupertino.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/tasks_list_view_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
         physics: const BouncingScrollPhysics(),
         itemBuilder: (context,index){
           return const TasksListViewItem();
         },
      ),
    );
  }
}
