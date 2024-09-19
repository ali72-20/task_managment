import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class CustomToast{

  static showCustomToast({required String msg, required Color color}){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16
    );
  }

}