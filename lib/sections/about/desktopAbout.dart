import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sections/navBar/navBarLogo.dart';
import '../../widget/aboutMeText.dart';

import '../../widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height + 50,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nAbout Me",
            style: GoogleFonts.frederickaTheGreat(
              fontSize: height * 0.075,
              color: Colors.black,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Who am I ?\n",
            style: GoogleFonts.frederickaTheGreat(
                fontWeight: FontWeight.w400,
                color: kPrimaryColor,
                fontSize: 30),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: AboutMeText(
                  fontSize: width <= 1100 ? 14 : 16,
                ),
              ),
              (width <= 950 && width >= 1185)
                  ? Container()
                  : Expanded(child: Container()),
              width >= 1185 ? Expanded(child: ToolsTech()) : ToolsTech()
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            children: [
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Divider(
                      color: kPrimaryColor,
                      height: 36,
                    )),
              ),
              MaterialButton(
                height: 70,
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  html.window.open(
                      'https://outlookuga-my.sharepoint.com/:b:/g/personal/sj70595_uga_edu/EU4U801ldCtPtjjWUBVB1gQB-HDcs9nsTU1aRORKQELvIw?e=w3YgaC',
                      // "https://drive.google.com/file/d/15KasRRF-dGRDHHxTLptFjMCZBk37zIUe/view?usp=sharing"
                      "pdf");
                },
                child: Text(
                  "Resume",
                  style: GoogleFonts.frederickaTheGreat(
                      color: Colors.black, fontSize: 25.0),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              NavBarLogo(
                height: height * 0.04,
              )
            ],
          )
        ],
      ),
    );
  }
}
