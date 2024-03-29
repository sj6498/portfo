import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sections/navBar/navBarLogo.dart';
import '../../widget/aboutMeText.dart';
import '../../widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height * 1.4,
      color: Colors.white54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nAbout Me",
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: AboutMeText(
                  fontSize: 12,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: 25.0,
              ),
              Expanded(
                child: ToolsTech(),
              )
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            children: [
              MaterialButton(
                height: 50,
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
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Divider(
                      color: kPrimaryColor,
                      height: 36,
                    )),
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
