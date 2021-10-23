// import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';

import 'package:covideye/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen2();
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyCliper(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF11249F),
                Color(0xFF3383CD),
              ],
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/virus.png"),
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("assets/eye.json", height: 300, width: 500)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "COVID-EYE",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'Bangers',
                        letterSpacing: 3.2),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                  ),
                  CircularProgressIndicator(
                    color: Color(0xFF29B6F6),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
