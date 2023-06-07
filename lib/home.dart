import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/navBar.dart';
import 'colors.dart' as colors;

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
  return Stack(
    children: [
      const ClipRRect(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
        child: SizedBox(
          height: 500,
          width: 450,
          child: Image(
            image: AssetImage("assets/img3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: ElevatedButton(
          onPressed: () {
            // handle button press
            // Navigator.of(context as BuildContext).push(
            //   MaterialPageRoute(
            //     builder: (context) => const FoodDonation(),
            //   ),
            // );
          },
          child: const Text('Get Started'),
        ),
      ),
    ],
  );
}

Widget tab2() {
  return Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 16, 100, 159),
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
    ),
  );
}

Widget tab3() {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/img1.jpg"), fit: BoxFit.cover),
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
