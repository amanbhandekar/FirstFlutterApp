import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int viewcount = 1;
  final String name = "Aman";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Flame",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child:
              Text("Welcome to my App! This is $viewcount and name is $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
