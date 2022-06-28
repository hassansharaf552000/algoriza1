import 'package:algoriza1/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALGORIZA1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:OnBoarding(),
    );
  }
}

