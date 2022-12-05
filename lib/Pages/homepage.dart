import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int viewcount = 1;
  final String name = "Aman";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flame"),
      ),
      body: Center(
        child: Container(
          child:
              Text("Welcome to my App! This is $viewcount and name is $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
