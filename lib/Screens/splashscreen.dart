import 'dart:async';
import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/login_screen.dart';
// import 'package:your_app_name/home_page.dart'; // Replace with the actual name of your home page file

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                LoginScreen(), // Replace with your home page widget
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/pbgback.png',
            fit: BoxFit.cover,
          ),
          // Logo
          Center(
            child: Image.asset(
              'assets/pbgcoin.png',
              width: 150, // Adjust the width as needed
            ),
          ),
        ],
      ),
    );
  }
}
