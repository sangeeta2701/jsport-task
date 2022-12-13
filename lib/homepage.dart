import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsport_task/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
      appBar: AppBar(
        backgroundColor: appUiLightColor,
        elevation: 0,
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: appUiLightColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: appUiLightGreyColor, width: 1)),
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
                height: 150,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
