import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          // decoration: BoxDecoration(border: Border.all()),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/motor.png',
                      width: 200,
                      height: 200,
                    ),
                    Text(
                      "Welcome to 👏",
                      style: GoogleFonts.hammersmithOne(
                          textStyle: TextStyle(fontSize: 20)),
                    ),
                    Text(
                      "Camink Parking",
                      style: GoogleFonts.hammersmithOne(
                          textStyle: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(248, 170, 39, 1))),
                    ),
                    Text(
                      "Parkir Aman",
                      style: GoogleFonts.hammersmithOne(
                          textStyle: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(248, 170, 39, 1)),
                      onPressed: () {},
                      child: Text("Next",
                          style: GoogleFonts.hammersmithOne(
                              textStyle: TextStyle(color: Colors.white))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
