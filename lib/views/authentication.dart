import 'package:flutter/material.dart';
import 'package:todo_app/views/sign_in.dart';
import 'package:todo_app/views/sign_up.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool showSignIn = true;

  toggle() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn ? SignIn(toggle: toggle) : SignUp(toggle: toggle);
  }
}
