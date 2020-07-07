import 'package:app_template/modules/authentication/views/screens/login_screen.dart';
import 'package:app_template/modules/user/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

final Map<String,Widget Function(BuildContext)> routes = {
  '/': (_) => LoginScreen(), 
  ProfileScreen.routeName: (_) => ProfileScreen()
};