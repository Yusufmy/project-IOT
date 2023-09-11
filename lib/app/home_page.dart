import 'package:flutter/material.dart';
import 'package:iot_project/app/OutBoarding_page.dart';
import 'package:iot_project/app/inBoarding_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
        child: Text('HomePage'),
      ),
    )
        //  Center(
        //     child: Column(
        //   children: [
        //     Text("AllBoardingPage"),
        //     ElevatedButton(
        //       onPressed: () {
        //         Navigator.of(context).pushReplacement(
        //             MaterialPageRoute(builder: (context) => inBoardingPage()));
        //       },
        //       child: Text("inBoradingPage"),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         Navigator.of(context).pushReplacement(
        //             MaterialPageRoute(builder: (context) => OutBoardingPage()));
        //       },
        //       child: Text("OutBoradingPage"),
        //     ),
        //   ],
        // )),
        );
  }
}
