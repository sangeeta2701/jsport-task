import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsport_task/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
      appBar: AppBar(
        backgroundColor: appUiLightColor,
        elevation: 5,
        shadowColor: appUiThemeColor,
        toolbarHeight: 70,
        title: Row(
          children: [
            Image(
              height: 35,
              width: 35,
              image: AssetImage("assets/img1.png"),
            ),
            Image(
              height: 18,
              width: 100,
              image: AssetImage("assets/img2.png"),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: appUiThemeColor, width: 2),
                image: DecorationImage(
                  image: AssetImage("assets/img3.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: appUiLightColor,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: appUiLightGreyColor, width: 1)),
                    child: Container(
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: appUiThemeColor,
                            indicatorWeight: 3,
                            unselectedLabelColor: appUiGreyColor,
                            labelColor: appUiThemeColor,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Overall",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Attendance",
                                  style: GoogleFonts.poppins(
                                      // color: appUiGreyColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Fees",
                                  style: GoogleFonts.poppins(
                                      // color: appUiGreyColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Staff",
                                  style: GoogleFonts.poppins(
                                      // color: appUiGreyColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                            isScrollable: true,
                            controller: tabController,
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Students Enrolled",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "76",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiThemeColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "TotalStaff Active",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "19",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiThemeColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Locations",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "4",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiThemeColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image(
                                            height: 120,
                                            image:
                                                AssetImage("assets/img7.PNG"))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage("assets/img8.PNG"),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 125,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: appUiLightGreyColor,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "March 2022",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Icon(
                                                    Icons.calendar_month,
                                                    color: appUiGreyColor,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 100,
                                            width: 125,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: appUiLightGreyColor,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Bellundur",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10,
                                                        color: appUiDarkColor),
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                    color: appUiDarkColor,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Total Sessions",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                      Text(
                                                        "28",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Active Sessions",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                      Text(
                                                        "24",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cancelled Sessions",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                      Text(
                                                        "02",
                                                        style: GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8,
                                                            color:
                                                                appUiGreyColor),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Fees Recieved",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "1.85L",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiThemeColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Fees Pending",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "65K",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: appUiThemeColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 45,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: appUiLightGreyColor,
                                                    width: 1),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 8,
                                                          width: 8,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  appUiThemeColor),
                                                        ),
                                                        Text(
                                                          "Fees Recieved",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      appUiGreyColor),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 8,
                                                          width: 8,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  appUiGreyColor),
                                                        ),
                                                        Text(
                                                          "Fees Pending",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      appUiGreyColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image(
                                            height: 120,
                                            image:
                                                AssetImage("assets/img9.PNG"))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage("assets/img10.PNG"),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 75,
                                        width: 125,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: appUiLightGreyColor,
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Staff Count",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                    color: appUiDarkColor),
                                              ),
                                              Divider(
                                                thickness: 1,
                                                color: appUiDarkColor,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Coordinators",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "04",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8,
                                                        color: appUiGreyColor),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Coaches",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8,
                                                        color: appUiGreyColor),
                                                  ),
                                                  Text(
                                                    "08",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8,
                                                        color: appUiGreyColor),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Batch Details",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: appUiDarkColor),
                      ),
                      Text(
                        "View All Classes",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: appUiThemeColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appUiLightColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appUiLightGreyColor, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ongoing",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiDarkColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bellundur",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                              Text(
                                "Batch - 02 ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "06:00 - 07:30 pm",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                              Text(
                                "ATTENDANCE TAKEN",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: appUiThemeColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            thickness: 1,
                            color: appUiLightGreyColor,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Next Class",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiDarkColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Bellundur",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                              Text(
                                "Batch - 02 ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "06:00 - 07:30 pm",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: appUiGreyColor,
                                ),
                              ),
                              Text(
                                "CLASS IN 22H 14M",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: appUiThemeColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: appUiDarkColor),
                      ),
                      Text(
                        "Show All",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: appUiThemeColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appUiLightColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appUiLightGreyColor, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [appUiThemeColor, appUiDarkColor],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Image(image: AssetImage("assets/img4.png")),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "A New Child Has Been Registered",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: appUiDarkColor),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Divider(
                                color: appUiLightGreyColor,
                                thickness: 1,
                              ),
                              Text(
                                "Mariam has been added to our database with",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                              Text(
                                "your details. We will let you know once she is",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                              Text(
                                "allotted to a batch",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appUiLightColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appUiLightGreyColor, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [appUiThemeColor, appUiDarkColor],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Image(image: AssetImage("assets/img4.png")),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Joshua Was Marked Present",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: appUiDarkColor),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Divider(
                                color: appUiGreyColor,
                                thickness: 2,
                              ),
                              Text(
                                "Joshua was marked present for todays session in",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                              Text(
                                "bellundur at 06:08pm",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fee Notifications",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: appUiDarkColor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appUiLightColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appUiLightGreyColor, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [appUiThemeColor, appUiDarkColor],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Image(image: AssetImage("assets/img5.png")),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Joshua’s Fee Payment Is Due",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: appUiDarkColor),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Divider(
                                color: appUiGreyColor,
                                thickness: 2,
                              ),
                              Text(
                                "Joshua’s fee payment for the month May 2022 is",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                              Text(
                                "due. Please pay at the earliest",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: appUiGreyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upcoming Events",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: appUiDarkColor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Image(
              width: double.infinity,
              image: AssetImage("assets/img6.png"),
            ),
          ],
        ),
      ),
    );
  }
}
