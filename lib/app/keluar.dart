import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class KeluarPage extends StatelessWidget {
  const KeluarPage({super.key});

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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hari ini, 11 September 2023",
                            style: GoogleFonts.hammersmithOne(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "07.10",
                            style: GoogleFonts.hammersmithOne(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Masuk : 07:05",
                                style: GoogleFonts.hammersmithOne(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: fromCssColor("#808080"),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Keluar : 16.30",
                                style: GoogleFonts.hammersmithOne(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: fromCssColor("#808080"),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "02",
                            style: GoogleFonts.hammersmithOne(
                                fontWeight: FontWeight.w600, fontSize: 36),
                          )
                        ],
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
