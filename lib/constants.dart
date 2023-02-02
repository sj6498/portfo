import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color.fromRGBO(92, 189, 185, 1);

// Social Media
const kSocialIcons = [
  "images/social/mail.png",
  "images/social/linkedin.png",
  "images/social/github.png",
];

const kSocialLinks = [
  "mailto:shanmukh698@gmail.com",
  "https://www.linkedin.com/in/jsc04/",
  "https://github.com/sj6498",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community

// Tools & Tech
final kTools = ["Python", "Flutter", "Dart", "R", "C#"];

final kTools1 = [
  "Java",
  "HTML",
  "CSS",
  "Node.js",
];

// services
final kSkillsIcons = [
  "images/skills/ai.png",
  "images/skills/app.png",
  "images/skills/blog.png",
  "images/skills/ml.jpg",
  "images/skills/open.png",
];

final kSkillsTitles = [
  "AI Development",
  "App Development",
  "Blog Writter",
  "Machine Learning",
  "Open Source - GitHub",
];

final kSkillsDescriptions = [
  "I like working on artificial intelligence projects using neurtal networks and enhance my knowledge by developing projects",
  "I am experienced and skilled in app development using Flutter, also worked on backend using firebase, and i am currently trying to improve my skills in adding complex functionality to apps.",
  "Being one of the self learned programmer,always love to express my views and share knowledge using blogs on Medium",
  "I love doing Deep Learning and Machine Learning projects which can solve potential problem using datasets and alogorithms",
  "I love working for the community and give my contribution towards greater good, therefore i have been recently quite active in community and added new projects for public view",
];

final kBlogBanner = [
  "images/blogs/ap-1.jpg",
  "images/blogs/blog-1.jpg",
  "images/blogs/blog-2.jpg",
  "images/blogs/1.png",
];
final kBlogTitles = [
  "Surgical tool detection",
  "Movie Ticket booking",
  "IOT Security analysis",
  "Food Delivery Application"
];
final kBlogIcons = [
  "images/blogs/ap-1.jpg",
  "images/blogs/blog-1.jpg",
  "images/blogs/blog-2.jpg",
  "images/blogs/1.png",
];
final kBlogDescriptions = [
  "Created a machine-learning model which recognizes surgical tools used during surgery.",
  "Developed a full-stack working website with a team for a software engineering class.",
  "Learning about the vulnerability of bluetooth connection and performed a man-in-the-middle attack to exploit the issues.",
  "Created a working website with more implementations on the database side using 2 different databases and compare the results."
];

// projects
final kProjectsBanner = [
  "images/projects/1.jpg",
  "images/projects/2.jpg",
  "images/projects/4.png",
  "images/projects/3.png"
];

final kProjectsIcons = [
  "images/projects/1.jpg",
  "images/projects/2.jpg",
  "images/projects/4.png",
  "images/projects/3.png"
];

final kProjectsTitles = [
  "Vaccine Finder",
  "Exercise Helper",
  "Swing",
  "Sudoku Solver"
];

final kProjectsDescriptions = [
  "Python Application helps to find vaccination slots in India using Official API",
  "Applcation that helps counting the reps and display angles during exercise",
  "App that provides daily and fun facts available on Google play.",
  "Solves sudoku puzzles with image as input."
];

final kProjectsLinks = [
  "https://github.com/JastiShanmukh/vaccine_finder",
  "https://github.com/JastiShanmukh/Exercise",
  "https://play.google.com/store/apps/details?id=com.shanmukhjasti.swing",
  "https://github.com/JastiShanmukh/sudokuSolve"
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Athens, Georgia",
  "(+1) 469-929-0890",
  "shanmukh698@gmail.com"
];

final kContactLinks = [
  "https://goo.gl/maps/2rm29JKKXg2HMx9K7",
  "tel:+1-469-929-0890",
  "mailto:shanmukh698@gmail.com",
];
