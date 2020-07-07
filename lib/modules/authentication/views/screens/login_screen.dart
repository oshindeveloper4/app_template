import 'package:app_template/modules/user/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  handleClick() {
    Navigator.of(context).pushNamed(ProfileScreen.routeName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('login'),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: handleClick,
        ),
      ),
    );
  }
}
