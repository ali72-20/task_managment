import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/input_feild.dart';

import '../../../../core/utilites/custom_toast.dart';
import '../../data_layer/apis/add_task.dart';

class AddTaskFrom extends StatefulWidget {
  AddTaskFrom({super.key});

  @override
  State<AddTaskFrom> createState() => _AddTaskFromState();
}

class _AddTaskFromState extends State<AddTaskFrom> {
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
                   statuecode = await AddNewTask(Dio()).createTask(
                        title: titleController.text,
                        description: descriptionController.text,
                        data: dateController.text);
                    titleController.text = "";
                    descriptionController.text = "";
                    dateController.text = "";
                  }
                 if(statuecode  == 200 || statuecode == 204){
                   CustomToast.showCustomToast(msg: 'Task Updated successfully',color: Colors.green);
                 }else{
                   CustomToast.showCustomToast(msg: "Some thing went wrong",color: Colors.red);
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
