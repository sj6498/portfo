import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/skillsCard.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "Skills",
            style: GoogleFonts.frederickaTheGreat(
              color: Colors.black,
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SkillsCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                skillsIcon: kSkillsIcons[i],
                skillsTitle: kSkillsTitles[i],
                skillsDescription: kSkillsDescriptions[i],
                //   skillsLink: kSkillsLinks[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
