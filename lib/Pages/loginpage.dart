import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.black,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 40 : 8),
                        color: Colors.cyan,
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //     child: Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(180, 50)),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
