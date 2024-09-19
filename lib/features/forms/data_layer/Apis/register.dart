import 'dart:developer';
import 'package:dio/dio.dart';

import '../../../../core/utilites/keys.dart';

class Register{
  final Dio dio;

  Register(this.dio);

  final String path = "http://192.168.1.72:$port/api/users/register";
  Future<List<String>?> register_auth({required String username, required String password, required String mail}) async{
    try{
      Response response = await dio.post(
          path,
          data: {
            "username": username,
            "password": password,
            "email":  mail
          }
      );
      List<String> data = [];
      data.add(response.data["Statue"]);
      data.add(response.data["username"]);
      data.add(response.data["id"]);
      return data;
    }on DioException catch(e){
      log('Error status: ${e.response?.statusCode}');

      log('Error message: ${e.response?.statusMessage}');

      log('Error data: ${e.response?.data}');
      return e.response?.data;
    }catch(e){
      log("some thing went wrong: $e");
    }
    return null;
  }
}