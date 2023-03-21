import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/fooddonationForm.dart';
import 'package:flutter_application_1/NavBar.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const FoodDonationForm(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text(
            'FOOD BANK',
            style: TextStyle(color: Color.fromARGB(255, 11, 13, 46)),
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
          ],
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/img1.jpg"), fit: BoxFit.cover),
    ),
    child: const Center(
      child: Text(
        'Home',
        style:
            TextStyle(fontSize: 34, color: Color.fromARGB(255, 245, 244, 247)),
      ),
    ),
  );
}

Widget tab2() {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/img2.jpg"), fit: BoxFit.cover),
    ),
    child: const Center(
      child: Text(
        'Projects',
        style:
            TextStyle(fontSize: 34, color: Color.fromARGB(255, 248, 244, 244)),
      ),
    ),
  );
}

Widget tab3() {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/img3.jpg"), fit: BoxFit.cover),
    ),
    child: const Center(
      child: Text(
        'Victims',
        style:
            TextStyle(fontSize: 34, color: Color.fromARGB(255, 248, 246, 246)),
      ),
    ),
  );
}
