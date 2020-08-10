import 'package:flutter/material.dart';

class ShoeModel {
  final String name;
  final String desc;
  final Color color;
  final String pro;
  final String imgPath;

  ShoeModel({
    this.name,
    this.desc,
    this.color,
    this.pro,
    this.imgPath,
  });

  static List<ShoeModel> list = [
    ShoeModel(
      name: "Virat Kohli",
      desc:
      "Virat Kohli is an Indian cricketer and the current captain of the India national team. A right-handed top-order batsman, Kohli is regarded as one of the best batsmen in the world. He plays for Royal Challengers Bangalore in the Indian Premier League, and has been the team's captain since 2013",
      color: Colors.white,
      pro: "Batsman",
      imgPath: "1.jpg",
    ),
    ShoeModel(
      name: "M S Dhoni",
      desc:
      "Mahendra Singh Dhoni, is an Indian international cricketer who captained the Indian national team in limited-overs formats from 2007 to 2016 and in Test cricket from 2008 to 2014. He is the only captain in the history of Cricket to win all ICC trophies.",
      color: Colors.white,
      pro: "Wicket keeper",
      imgPath: "2.jpg",
    ),
    ShoeModel(
      name: "Ravindra Jadeja",
      desc:
      "Ravindrasinh Anirudhsinh Jadeja, commonly known as Ravindra Jadeja, is an Indian international cricketer. He is an all-rounder, who plays as a left-handed middle-order batsman and slow left-arm orthodox bowler. He represents Saurashtra in first-class cricket and the Chennai Super Kings in the Indian Premier League. ",
      color: Colors.white,
      pro: "All Rounder",
      imgPath: "3.png",
    ),
    ShoeModel(
      name: "Jasprit Bumrah",
      desc:
      "Jasprit Jasbirsingh Bumrah (born 6 December 1993) is an Indian cricketer who plays for the Indian national cricket team in all formats of the game. After a couple of moderately successful seasons with the Mumbai Indians at the Indian Premier League, and with his domestic team Gujarat, he was named in India's squad for its 2015–16 series against Australia,"
          " as a replacement to an injured Bhuvneshwar Kumar.[2] He consequently made his debut in One Day"
          " Internationals & Twenty20 Internationals in 2015–16 series against Australia.",
      pro: "Bowler",
      imgPath: "4.jpg",
    ),
    ShoeModel(
      name: "Rohit Sharma",
      desc:
      "Rohit Gurunath Sharma is an Indian international cricketer who plays for Mumbai in domestic cricket and captains Mumbai Indians in the Indian Premier League as a right-handed batsman and an occasional right-arm off break bowler. He is the vice-captain of the Indian national team in limited-overs formats",
      color: Colors.white,
      pro: "Batsman",
      imgPath: "5.jpg",
    ),
    ShoeModel(
      name: "KL Rahul",
      desc:
      " Kannur Lokesh Rahul, commonly known as KL Rahul, is an Indian international cricketer who plays for Karnataka in domestic cricket and captains Kings XI Punjab in the Indian Premier League. He is a right-handed batsman and a wicket-keeper.",
      color: Colors.white,
      pro: "Batsman",
      imgPath: "6.png",
    ),
  ];
}