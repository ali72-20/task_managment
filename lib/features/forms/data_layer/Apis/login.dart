import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:task_managment/main.dart';

class Login{
 final Dio dio;

 Login(this.dio);

 final String path = "http://192.168.1.72:8080/api/users/login";
 Future<List<String>?> login_auth({required String username, required String password}) async{
   try{
     Response response = await dio.post(
       path,
       data: {
         "username": username,
         "password": password
       }
     );
     log("response: ${response.data}");
     List<String> data = [];
     data.add(response.data["Statue"]);
     data.add(response.data["username"]);
     data.add(response.data["id"]);
     userModel.username = response.data["username"];
     userModel.id = int.parse(response.data["id"]);
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