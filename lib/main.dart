import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tileshub/welcomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Set the duration to automatically move to the next screen
    Timer(Duration(seconds: 3), () {
      // Navigate to the next page (HomeScreen in this case)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => WelcomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color of the splash screen
      body: Center(
        child: Image.asset(
          'assets/bharathiya.png', // The path of your logo image
           // Set the height of the logo
        ),
      ),
    );
  }
}