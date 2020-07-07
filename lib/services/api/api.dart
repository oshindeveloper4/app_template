import 'package:app_template/services/api/authentication.dart';
import 'package:app_template/services/api/user.dart';
import 'package:flutter/material.dart';

enum RequestStatus {
  not_found,
  server_error,
  invalid_data,
  success,
}

class ApiResponse<T> {
  RequestStatus requestStatus;
  T data;

  ApiResponse({
    @required this.requestStatus,
    @required this.data,
  });
}

class Api {
  Api({this.user, this.authentication});

  final AuthenticationApi authentication;
  final UserApi user;

  static RequestStatus getStatus(int statusCode) {
    switch (statusCode) {
      case 200:
        return RequestStatus.success;
      case 404:
        return RequestStatus.not_found;
      default:
        return RequestStatus.server_error;
    }
  }
}

Api api = Api(
  user: UserApi(),
  authentication: AuthenticationApi(),
);
