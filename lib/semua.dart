import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SemuaPage extends StatelessWidget {
  const SemuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hari ini, 11 September 2023",
                        style: GoogleFonts.hammersmithOne(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Persentase 30%",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: fromCssColor('#074684')),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            transform: Matrix4.translationValues(-10, 0, 0),
                            child: LinearPercentIndicator(
                              lineHeight: 6,
                              percent: 0.7,
                              animation: true,
                              progressColor: fromCssColor('#F8AA27'),
                              backgroundColor: fromCssColor("#E4E4E4"),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Masuk 13 Motor",
                        style: GoogleFonts.hammersmithOne(
                          color: fromCssColor("#808080"),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        },
      ),
    ));
  }
}
