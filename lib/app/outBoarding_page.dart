import 'package:flutter/material.dart';

class OutBoardingPage extends StatefulWidget {
  const OutBoardingPage({super.key});

  @override
  State<OutBoardingPage> createState() => _OutBoardingPageState();
}

class _OutBoardingPageState extends State<OutBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Center(child: Text("OutBoardingPage"))),
    );
  }
}