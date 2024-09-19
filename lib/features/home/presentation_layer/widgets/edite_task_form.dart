import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/input_feild.dart';

import '../../data_layer/apis/edit_tasks.dart';


class EditeTaskForm extends StatefulWidget {
  EditeTaskForm({super.key});

  @override
  State<EditeTaskForm> createState() => _EditeTaskFormState();
}

class _EditeTaskFormState extends State<EditeTaskForm> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
                int? statuecode = -1;
                if(formKey.currentState!.validate()) {
                  statuecode = await EditTasks(Dio()).update(
                      title: titleController.text,
                      description: descriptionController.text,
                      date: dateController.text);
                  titleController.text = "";
                  descriptionController.text = "";
                  dateController.text = "";
                }
                if(statuecode  == 200 || statuecode == 204){
                  Fluttertoast.showToast(
                      msg: "Task added successfully",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16
                  );
                }else{
                  Fluttertoast.showToast(
                      msg: "Some thing went wrong",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16
                  );
                }
              },
            )
          ],
        ),
      ),
    );
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
