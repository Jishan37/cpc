import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cpc/main.dart';
import 'package:cpc/page/page2.dart';
import 'package:cpc/page/page4.dart';
import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
            splash: Container(
              color: Colors.orange,

            ),
            nextScreen: PageTwo(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        splashIconSize: 780,
        backgroundColor: Colors.orange,
          ),
    );
  }
}
