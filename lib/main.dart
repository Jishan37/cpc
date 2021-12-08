import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cpc/page/page3.dart';
import 'package:cpc/page/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  AnimatedSplashScreen(
        splash: Container(
          child: Image.asset('assets/1.JPG',
          ),
        ),
        nextScreen: PageThree(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 400,
      )
    );
  }
}

