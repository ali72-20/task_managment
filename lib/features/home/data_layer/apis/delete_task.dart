import 'dart:developer';
import 'package:dio/dio.dart';


class DeleteTask{
  final Dio dio;
  DeleteTask(this.dio);

  final String path = "http://192.168.1.72:8080/api/tasks/";
  Future<int?> delete({required int id}) async{
    try{
      Response response = await dio.delete(
          "$path$id",
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