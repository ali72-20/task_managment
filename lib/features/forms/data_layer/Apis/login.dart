import 'dart:developer';

import 'package:dio/dio.dart';

class Login{
 final Dio dio;

 Login(this.dio);

 final String base = "localhost:8080";
 final String path = "localhost:8080/api/users/login";
 Future login_auth({required String username, required String password}) async{
   try{
     Response response = await dio.post(
       path,
       data: {
         "username": username,
         "password": password
       }
     );
     return response;
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