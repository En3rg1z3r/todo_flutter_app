import 'package:flutter/material.dart';
import 'package:todo_app/database/auth.dart';
import 'package:todo_app/views/sign_in.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your todoes"),
        backgroundColor: Color(0xFF01579b),
        actions: [
          FlatButton.icon(
              onPressed: () async {
                await Auth.signOut();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              icon: Icon(Icons.exit_to_app),
              label: Text("logout"))
        ],
      ),
    );
  }
}
