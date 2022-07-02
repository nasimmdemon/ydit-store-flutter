// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:ydit_store/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/logo.jpg',
              scale: 2.9,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                      labelText: "User Name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  // )
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedBtn = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changedBtn = false; 
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: changedBtn ? 30 : 40,
                      width: changedBtn ? 30 : 150,
                      alignment: Alignment.center,
                      child: changedBtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: changedBtn
                            ? Colors.deepOrange
                            : Colors.lightBlueAccent,
                        borderRadius:
                            BorderRadius.circular(changedBtn ? 50 : 8),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

