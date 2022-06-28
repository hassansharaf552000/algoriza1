import 'package:flutter/material.dart';

import 'login_screen.dart';

class OnBoardingContent extends StatelessWidget {
  final String text, image, title;
  const OnBoardingContent(
      {
        required this.text,
        required this.image,
        required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,color: Colors.grey),
          ),
        ),


      ],
    );
  }
}