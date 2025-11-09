import 'dart:async'; // ✅ Needed for Timer
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

// Example target screen
// import 'dashboard.dart'; // ✅ Make sure you have this file or adjust import

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 4 seconds before navigating to DashboardScreen
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  MyHomePage(title: 'home page',)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: Colors.blue,
        child: Center(
          child: Text(
            'My App',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
