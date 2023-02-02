import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../constants.dart';
import '../../widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
           Image.asset('images/paperbg2.jpg',repeat: ImageRepeat.repeat,height: height,),
          Positioned(
            bottom: 0.0,
            right: -width * 0.15,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset('images/37246.png', height: height * 0.5, colorBlendMode: BlendMode.colorBurn,
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Shanmukh",
                  style: GoogleFonts.frederickaTheGreat(
                    color:kPrimaryColor.withOpacity(0.8),
                      fontSize: height * 0.06,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Jasti",
                  style: GoogleFonts.frederickaTheGreat (
                      color: Colors.black,
                      fontSize: height * 0.055, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserrat(color: Colors.black,
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
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.04,
                        horizontalPadding: 2.0,
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
