import 'dart:math';

import 'package:algoriza1/login_screen.dart';
import 'package:algoriza1/signup_screen.dart';
import 'package:flutter/material.dart';
import 'onboard_content.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  List<Map<String, dynamic>> contentData = [
    {
      "title": "Hassan Sharaf El-Din Abdel Hadi",
      "text":
      "Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information, Assiut University",
      "image": "assets/images/slide_1.png",
    },
    {
      "title": "Hassan Sharaf El-Din Abdel Hadi",
      "text":
      "Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information, Assiut University",
      "image": "assets/images/slide_1.png",
    },
    {
      "title": "Hassan Sharaf El-Din Abdel Hadi",
      "text":
      "Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information, Assiut University",
      "image": "assets/images/slide_1.png",
    },
    {
      "title": "Hassan Sharaf El-Din Abdel Hadi",
      "text":
      "Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information, Assiut University",
      "image": "assets/images/slide_1.png",
    },
    {
      "title": "Hassan Sharaf El-Din Abdel Hadi",
      "text":
      "Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information, Assiut University",
      "image": "assets/images/slide_1.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(); //for screen control
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: MaterialButton(onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) =>  LoginScreen()));
                  }, child: Text(
                      'Skip'
                  ),),
                ),
              ],
            ),),
            Expanded(
              flex: 18,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: contentData.length,
                itemBuilder: (context, index) => OnBoardingContent(
                    text: contentData[index]['text'],
                    image: contentData[index]['image'],
                    title: contentData[index]['title']),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Row(
                        children: [
                          Spacer(
                          ),
                          Row(
                            children: List.generate(contentData.length,
                                    (index) => buildDot(index: index)),
                          ),
                          Spacer(),
                          Container(
                           child: Text(''),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 1),
                        width:double.infinity,
                        child: MaterialButton(onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) =>  LoginScreen()));
                        },  child: Text(
                            'Get Started'
                        ),),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dont have an account?'),
                            TextButton(onPressed:(){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>  SignUp()));
                            }, child: Text(
                                'Sign Up'
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
  AnimatedContainer buildDot({int? index}) => AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.orange : Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );


}
