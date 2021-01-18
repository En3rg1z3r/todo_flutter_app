import 'package:flutter/material.dart';
import 'package:todo_app/custom/custom_widgets.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn({this.toggle});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signIn() {
    if (formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01579b),
        title: Text("Todo app"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    textField("Email", false, (String value) {
                      return isEmail(value)
                          ? null
                          : "enter a valid email please";
                    }, emailController),
                    SizedBox(height: 50),
                    textField("Password", true, (String value) {
                      return value.length > 6
                          ? null
                          : "too short, try again please";
                    }, passwordController)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xFF01579b), width: 2)),
              child: FlatButton(
                  onPressed: () {
                    signIn();
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white54, fontSize: 20),
                  )),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account ?",
                    style: TextStyle(color: Colors.white54),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      widget.toggle();
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white54,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
