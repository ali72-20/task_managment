import 'dart:developer';
import 'package:dio/dio.dart';

import '../../../../core/utilites/keys.dart';
import '../../../../main.dart';


class EditTasks{
  final Dio dio;
  EditTasks(this.dio);

  final String path = "http://192.168.1.72:$port/api/tasks/";
  Future<int?> update({required String title, required String description, required String date}) async{
    try{
      Response response = await dio.put(
          path,
          data: {
            "title": title,
            "description": description,
            "dueDate" : date,
            "statue": "To Do",
            "user":{
              "id" : userModel.id
            }
          }
      );
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