

import 'package:app_template/modules/user/models/user.dart';
import 'package:app_template/services/api/api.dart';
import 'package:dio/dio.dart';


class UserApi {
  
 Future<ApiResponse<User>> me() async {
   Response<User> response = await Dio().get('https://wwww.google.com');

   return ApiResponse(
     requestStatus: RequestStatus.success, 
     data: response as User
   ); 
 }

 
  Future<ApiResponse> update() async {
    
    Response response = await Dio().get('https://wwww.google.com'); 

    return ApiResponse(
      requestStatus: RequestStatus.success, 
      data:  response
    ); 
  }

}
