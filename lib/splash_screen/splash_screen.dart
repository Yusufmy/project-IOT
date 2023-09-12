import 'dart:async';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:from_css_color/from_css_color.dart';
import 'package:iot_project/pages/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/camink.png',
                width: 300,
                height: 300,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -10, 0),
              child: Text(
                "CAMINK PARKING",
                style: GoogleFonts.hammersmithOne(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: fromCssColor("#F8AA27"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
