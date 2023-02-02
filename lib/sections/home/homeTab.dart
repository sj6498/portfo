import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
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
            height: height,
          ),
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'images/37246.png',
                  height: height * 0.68,
                  colorBlendMode: BlendMode.color,
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Shanmukh",
                  style: GoogleFonts.frederickaTheGreat(
                      fontSize: height * 0.09,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryColor.withOpacity(0.8),
                      letterSpacing: 1.5),
                ),
                Text(
                  "Jasti",
                  style: GoogleFonts.frederickaTheGreat(
                      color: Colors.black,
                      fontSize: height * 0.09,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                        text: [
                          " Passionate about AI",
                          " Flutter Developer",
                          "Love working with DL",
                          " Machine Learning Enthusiast"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.04,
                        horizontalPadding: width * 0.01,
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
