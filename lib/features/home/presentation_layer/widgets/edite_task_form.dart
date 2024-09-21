import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/input_feild.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';
import 'package:task_managment/features/home/presentation_layer/home_screen.dart';

import '../../../../core/utilites/custom_toast.dart';
import '../../data_layer/apis/edit_tasks.dart';
List<String> list = <String>['To DO', 'In progress', 'Done'];

class EditeTaskForm extends StatefulWidget {
  EditeTaskForm({super.key, required this.task});

  TaskModel task;
  @override
  State<EditeTaskForm> createState() => _EditeTaskFormState();
}

class _EditeTaskFormState extends State<EditeTaskForm> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController dateController = TextEditingController();
  TextEditingController statueController = TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController.text = widget.task.title;
    descriptionController.text = widget.task.description;
    dateController.text = widget.task.date;
    statueController.text = widget.task.statue;
  }
  final formKey = GlobalKey<FormState>();

  String dropDownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            InputFeilde(
              hint: 'Task title',
              controller: titleController,
              suffix_icon: Icons.title,
            ),
            const SizedBox(
              height: 32,
            ),
            InputFeilde(
              hint: 'Task description',
              controller: descriptionController,
              suffix_icon: Icons.description,
            ),
            const SizedBox(
              height: 32,
            ),
            DropdownMenu<String>(
              controller: statueController,
              initialSelection: list.first,
              onSelected: (value){
               setState(() {
                 dropDownValue=  value!;
               });
              },
              dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            const SizedBox(
              height: 32,
            ),
            TextFormField(
              controller: dateController,
              decoration: const InputDecoration(
                  labelText: "DATE",
                  filled: true,
                  suffixIcon: Icon(Icons.calendar_today),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor))),
              readOnly: true,
              onTap: () {
                _selectDate(context);
              },
            ),
            const SizedBox(height: 32,),
            IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  elevation: 12
              ),
              icon: const Icon(Icons.done_outline_sharp, color: Colors.white,),
              onPressed: () async{
                int? statuecode = await validateEditTask();
                checkResponseStatueCode(statuecode, context);
              },
            )
          ],
        ),
      ),
    );
  }

  void checkResponseStatueCode(int? statuecode, BuildContext context) {
       if(statuecode  == 200 || statuecode == 204){
      CustomToast.showCustomToast(msg: 'Task Updated successfully',color: Colors.green);
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
    }else{
      CustomToast.showCustomToast(msg: "Some thing went wrong",color: Colors.red,);
    }
  }

  Future<int?> validateEditTask() async {
       int? statuecode = -1;
    if(formKey.currentState!.validate()) {
      statuecode = await EditTasks(Dio()).update(
        id: widget.task.id,
          title: titleController.text,
          statue: statueController.text,
          description: descriptionController.text,
          date: dateController.text);
      titleController.text = "";
      descriptionController.text = "";
      dateController.text = "";
    }
    return statuecode;
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pick = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pick != null) {
      setState(() {
        dateController.text = pick.toString().split(" ")[0];
      });
    }
  }
}
