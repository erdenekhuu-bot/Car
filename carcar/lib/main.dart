import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'SignIn.dart';
import 'Register.dart';
import 'Recover.dart';
import 'dart:async';

void main() {
  runApp(const Pages());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignIn()),
      );
    });
    return Scaffold(
      backgroundColor: Color(0xFF404040),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image(
                height: 127,
                image: AssetImage(
                  'images/Group38.png',
                ),
              ),
            )
          ],
        ),
        const Text('Car Car',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontSize: 40,
                fontWeight: FontWeight.bold))
      ]),
    );
  }
}

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/splash': (context) => const SignIn(),
        '/login': (context) => const Page1(),
        '/register': (context) => const SecondPage1(),
      },
    );
  }
}
