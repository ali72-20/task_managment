import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:task_managment/features/home/data_layer/models/task_model.dart';
import 'package:task_managment/main.dart';
import '../../../../core/utilites/keys.dart';

class GetTasks{
  final Dio dio;

  GetTasks(this.dio);

  final String path = "http://192.168.1.72:$port/api/tasks/getTasks";
  Future<List<TaskModel>?> getTasks() async{
    try{
      Response response = await dio.get(
          path,
          queryParameters: {
           "id" : userModel.id
          }
      );
      log("response: ${response.data}");
      List<TaskModel> tasks = [];
      for(dynamic key in response.data){
          tasks.add(TaskModel(title: key["title"], description:key["description"], statue: key["statue"],id: key["id"]));
      }
      return tasks;
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