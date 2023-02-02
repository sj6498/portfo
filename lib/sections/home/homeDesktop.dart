import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../animations/bottomAnimation.dart';
import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../../widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Image.asset(
            'images/bg-1.jpg',
            repeat: ImageRepeat.repeat,
            width: width,
          ),
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.04,
            child: Opacity(
              opacity: 0.8,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'images/37246.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                  colorBlendMode: BlendMode.color,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Shanmukha Sai",
                  style: GoogleFonts.frederickaTheGreat(
                      color: kPrimaryColor.withOpacity(0.8),
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      // fontWeight: FontWeight.w200,
                      letterSpacing: 4.0),
                ),
                Text(
                  "Jasti",
                  style: GoogleFonts.frederickaTheGreat(
                      color: Colors.black,
                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 5.0),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                      ),
                      TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w200),
                          text: [
                            " Passionate about AI",
                            " Flutter Developer",
                            "Former Full-Stack developer employee",
                            " Machine Learning Enthusiast"
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: kSocialIcons[i],
                          socialLink: kSocialLinks[i],
                          height: height * 0.05,
                          horizontalPadding: width * 0.005,
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
