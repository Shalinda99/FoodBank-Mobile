import 'package:flutter/material.dart';
//import 'package:flutter_application_1/fooddonation.dart';
//import 'package:flutter_application_1/fooddonationForm.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'package:flutter_application_1/victimForm.dart';

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
        primarySwatch: Colors.orange,
      ),
      home: const victiminfo  (),
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
        appBar: AppBar(
          title: const Text(
            'FOOD BANK',
            style: TextStyle(color: Color.fromARGB(255, 11, 13, 46)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: const Color.fromARGB(255, 11, 13, 46),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: const Color.fromARGB(255, 11, 13, 46),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              color: const Color.fromARGB(255, 11, 13, 46),
              onPressed: () {},
            ),
          ],
          // flexibleSpace: Image.asset(
          //   "assets/img1.jpg",
          //   fit: BoxFit.cover,
          // ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.add_box_rounded)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          elevation: 2.0,
          backgroundColor: const Color.fromARGB(255, 218, 178, 17),
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
