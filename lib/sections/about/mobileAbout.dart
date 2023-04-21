import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/aboutMeText.dart';
import '../../widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Who am I ?\n",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                color: kPrimaryColor,
                fontSize: 20),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          AboutMeText(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          MaterialButton(
            height: 50,
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              launchURL(
                  "https://outlookuga-my.sharepoint.com/:b:/g/personal/sj70595_uga_edu/EU4U801ldCtPtjjWUBVB1gQB-HDcs9nsTU1aRORKQELvIw?e=w3YgaC");
            },
            child: Text(
              "Resume",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          ToolsTech(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.black38,
              )
            ],
          )
        ],
      ),
    );
  }
}
