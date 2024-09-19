import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:task_managment/core/utilites/keys.dart';
import 'package:task_managment/main.dart';

class AddNewTask{
  final Dio dio;

  AddNewTask(this.dio);

  final String path = "http://192.168.1.72:$port/api/tasks/create";
  Future<int?> createTask({required String title, required String description, required String data}) async{
    try{
      Response response = await dio.post(
        path,
        data: {
          "title": title,
           "description": description,
           "dueDate" : data,
           "statue": "To Do",
           "user":{
               "id" : userModel.id
           }
        }
      );
      log("response ${response.data}");
      return response.statusCode;
    }on DioException catch(e){
      log('Error status: ${e.response?.statusCode}');

      log('Error message: ${e.response?.statusMessage}');

      log('Error data: ${e.response?.data}');
      return e.response?.data;
    }catch(e){
      log("some thing went wrong: $e");
    }
  }
}