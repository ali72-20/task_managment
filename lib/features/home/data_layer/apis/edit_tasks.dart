import 'dart:developer';
import 'package:dio/dio.dart';

import '../../../../core/utilites/keys.dart';
import '../../../../main.dart';


class EditTasks{
  final Dio dio;
  EditTasks(this.dio);

  final String path = "http://192.168.1.72:$port/api/tasks/";
  Future<int?> update({required String title, required String statue, required String description, required String date, required int id}) async{
    try{
      Response response = await dio.put(
          "$path$id",
          data: {
            "title": title,
            "description": description,
            "dueDate" : date,
            "statue":statue,
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