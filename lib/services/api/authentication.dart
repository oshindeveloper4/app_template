import 'package:app_template/services/api/api.dart';
import 'package:dio/dio.dart';

class AuthenticationApi {
  Future<ApiResponse> login(String email, String password) async {
    Response response = await Dio().get('http://wwww.google.com');

    return ApiResponse(
      requestStatus: RequestStatus.success, 
      data: response.data,
    );
  }

  Future<ApiResponse> logout() async {
    Response response = await Dio().get('http://www.google');

    return ApiResponse(
        requestStatus: RequestStatus.success, data: response.data);
  }
}
