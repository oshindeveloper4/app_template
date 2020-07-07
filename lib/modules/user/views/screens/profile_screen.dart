
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../bloc/users/users_bloc.dart';

import '../widgets/user_display.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

 

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (BuildContext context) => UsersBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: UserDisplay()
      ),
    );
  }
}
