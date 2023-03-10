import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "\nPortfolio",
            style: GoogleFonts.frederickaTheGreat(
              color: Colors.black,
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                projectIcon: kProjectsIcons[i],
                projectTitle: kProjectsTitles[i],
                projectDescription: kProjectsDescriptions[i],
                // projectLink: kProjectsLinks[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          MaterialButton(
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              launchURL("https://github.com/JastiShanmukh");
            },
            child: Text(
              "More",
              style: GoogleFonts.frederickaTheGreat(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Text(
            "\nBlogs",
            style: GoogleFonts.frederickaTheGreat(
              color: Colors.black,
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                projectIcon: kBlogBanner[i],
                projectTitle: kBlogTitles[i],
                projectDescription: kBlogDescriptions[i],
                //  projectLink: kBlogLinks[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.4,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
        ],
      ),
    );
  }
}
