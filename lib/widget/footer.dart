import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.04,
      width: width,
      color: Colors.grey[900],
     
        child: Align(alignment: Alignment.bottomLeft,
          child: Text(
            "© All Right Reservered by Shanmukha Sai Jasti",
            style: GoogleFonts.roboto(fontWeight: FontWeight.w100,fontSize: 18.0),
          ),
        ),
      
    );
  }
}
