import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:iot_project/app/home_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/motor.png',
                    width: 380,
                    height: 300,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Welcome To",
                            style: GoogleFonts.hammersmithOne(
                              color: fromCssColor("#074684"),
                              fontSize: 30,
                            ),
                          ),
                          TextSpan(
                            text: " 👋",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ]),
                      ),
                      Text(
                        "Camink Parking",
                        style: GoogleFonts.hammersmithOne(
                            textStyle: const TextStyle(
                                fontSize: 40,
                                color: Color.fromRGBO(248, 170, 39, 1))),
                      ),
                      Text(
                        "Sistem Parkir Aman",
                        style: GoogleFonts.hammersmithOne(
                          color: fromCssColor("#074684"),
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: fromCssColor(
                          "#F8AA27",
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.hammersmithOne(
                            color: fromCssColor("#074684"),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
