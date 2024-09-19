
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';


class InputFeilde extends StatelessWidget {
   InputFeilde({super.key, required this.hint,required this.controller, required this.suffix_icon});
   String hint;
   TextEditingController controller;
   IconData suffix_icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator: (value){
        if(value == null || value.isEmpty){
          return "Required";
        }
      },
      onSaved: (value){

      },
      decoration:  InputDecoration(
        labelText: hint,
        labelStyle: Styles.style16,
        hintStyle: Styles.style16,
        border: const OutlineInputBorder(),
        suffixIcon: Icon(suffix_icon),
      ),
    ) ;
  }
}
