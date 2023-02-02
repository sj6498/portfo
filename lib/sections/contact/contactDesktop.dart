import 'package:flutter/material.dart';
import 'package:portfolio/ttt_game/1.dart';
import '../../animations/bottomAnimation.dart';
import '../../constants.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nContact",
            style: GoogleFonts.frederickaTheGreat(
              color: Colors.black,
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width < 1200 ? width * 0.25 : width * 0.2,
                height: width < 1200 ? height * 0.28 : height * 0.25,
                child: Column(
                  children: [
                    Text(
                      "Can you win?",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    Container(
                        width: width < 1200 ? width * 0.25 : width * 0.2,
                        height: width < 1200 ? height * 0.25 : height * 0.22,
                        child: TicTacToe()),
                  ],
                ),
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                  projectIconData: kContactIcons[0],
                  projectTitle: kContactTitles[0],
                  projectDescription: kContactDetails[0],
                  projectLink: kContactLinks[0],
                ),
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                  projectIconData: kContactIcons[1],
                  projectTitle: kContactTitles[1],
                  projectDescription: kContactDetails[1],
                  projectLink: kContactLinks[1],
                ),
              ),
              WidgetAnimator(
                child: ProjectCard(
                  cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                  cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                  projectIconData: kContactIcons[2],
                  projectTitle: kContactTitles[2],
                  projectDescription: kContactDetails[2],
                  projectLink: kContactLinks[2],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
