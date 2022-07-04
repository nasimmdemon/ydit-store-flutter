// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:ydit_store/screens/HomePage.dart';
import 'package:ydit_store/screens/login_page.dart';
import 'package:ydit_store/utils/routes.dart';
import 'package:ydit_store/utils/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      darkTheme: MyTheme.darkTheme(context),
    );
  }
}
