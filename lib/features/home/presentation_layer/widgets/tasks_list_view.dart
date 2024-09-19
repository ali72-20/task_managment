import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/app_routes.dart';
import 'package:task_managment/features/home/data_layer/apis/delete_task.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/edit_taks_ui.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/tasks_list_view_item.dart';
import '../../data_layer/models/task_model.dart';

class TasksListView extends StatefulWidget {
   TasksListView({super.key,required this.tasks});
  List<TaskModel> tasks;

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.tasks.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return  Slidable(
            startActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  icon: Icons.edit,
                  label: 'Edit',
                  backgroundColor: Colors.blue,
                  onPressed: (context){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EditTaksUi(task: widget.tasks[index] ,)));
                  },
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  icon: Icons.delete,
                  label: 'delete',
                  backgroundColor: Colors.red,
                  onPressed: (context) async{
                    int? code = await DeleteTask(Dio()).delete(id: widget.tasks[index].id);
                    if(code == 200 ||code == 400){
                      setState(() {
                         widget.tasks.removeAt(index);
                         Fluttertoast.showToast(
                             msg: "Task added successfully",
                             toastLength: Toast.LENGTH_SHORT,
                             backgroundColor: Colors.green,
                             textColor: Colors.white,
                             fontSize: 16
                         );
                      });
                    }
                  },
                ),
              ],
            ),
            child:  TasksListViewItem(task: widget.tasks[index],),
          );
        },
      ),
    );
  }
}
