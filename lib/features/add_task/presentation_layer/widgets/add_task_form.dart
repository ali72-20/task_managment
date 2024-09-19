import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/forms/presentation_layer/widgets/input_feild.dart';

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
               onPressed: (){

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
