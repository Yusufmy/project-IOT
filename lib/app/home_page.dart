import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_project/app/keluar.dart';
import 'package:iot_project/app/masuk.dart';
import 'package:iot_project/app/semua.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: fromCssColor('#F8AA27'),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 25, top: 20),
                              child: IconButton(
                                  icon: Icon(Icons.calendar_month_outlined),
                                  onPressed: () async {
                                    DateTime? newDate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime.now());
                                    print(newDate);
                                  }),
                              //  Icon(
                              //   Icons.calendar_month_outlined,
                              //   color: fromCssColor("#074684"),
                              //   size: 32,
                              // ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Camink Parking",
                                    style: GoogleFonts.hammersmithOne(
                                        color: fromCssColor("#074684"),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 34),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Sistem Parkir Aman Berbasis IOT",
                                    style: GoogleFonts.hammersmithOne(
                                      color: fromCssColor("#074684"),
                                      fontSize: 19,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      transform: Matrix4.translationValues(0, -75, 0),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${DateFormat('EEEE, d MMMM y').format(DateTime.now())}",
                              style: GoogleFonts.hammersmithOne(
                                fontSize: 16,
                                color: fromCssColor("#074684"),
                              ),
                            ),
                            Text(
                              "Tersedia 20 Slot Tempat Parkir",
                              style: GoogleFonts.hammersmithOne(
                                fontSize: 20,
                                color: fromCssColor("#074684"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "12/20",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: fromCssColor('#074684')),
                                    ),
                                    Text(
                                      "8 Tersedia",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: fromCssColor('#074684')),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  transform:
                                      Matrix4.translationValues(-10, 0, 0),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -35, 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        // transform: Matrix4.translationValues(0, -40, 0),
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: fromCssColor("#F8AA27"),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: fromCssColor("#F8AA27"),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: fromCssColor("#F8AA27"),
                          labelStyle: const TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w500),
                          unselectedLabelStyle: const TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w500),
                          tabs: const [
                            Tab(text: 'Masuk'),
                            Tab(text: 'Keluar'),
                            Tab(text: 'Semua'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  MasukPage(),
                  KeluarPage(),
                  SemuaPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
