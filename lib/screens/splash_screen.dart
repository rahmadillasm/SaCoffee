import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'dart:async';
import 'package:sacoffe/screens/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=>SignInScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/sacoffee_logo.png",
              width: 140,
              height: 180,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
