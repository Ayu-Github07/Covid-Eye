import 'package:covideye/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'Screens/splashscreen1.dart';
// import 'Screens/login.dart';
// import 'Screens/Forget_password/forget_password.dart';

void main() {
  runApp(CovidEye());
}

class CovidEye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid-eye",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline5: TextStyle(color: Colors.black),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
