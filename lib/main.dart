import 'package:flutter/material.dart';
//import 'package:flutter_application_1/fooddonation.dart';
//import 'package:flutter_application_1/fooddonationForm.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'package:flutter_application_1/victimForm.dart';
import 'package:flutter_application_1/navBar.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/WelcomeScreen.dart';
import 'colors.dart' as colors;
//import 'package:flutter_application_1/fooddonationForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove debug badge
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: WelcomeScreen(),
    );
  }
}
