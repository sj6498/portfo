import 'package:flutter/material.dart';
import './constants.dart';
import './sections/mainSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shanmukha Sai Jasti',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        // fontFamily: "Montserrat",
        highlightColor: kPrimaryColor,
      ),
      home: MainPage(),
    );
  }
}
