import 'package:flutter/material.dart';
import 'package:flutter_application_1/ContactTab.dart';
import 'package:flutter_application_1/HomeTab.dart';
import 'package:flutter_application_1/Projects.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/moneyDonation.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'colors.dart' as colors;

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
            height: 180,
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'FOOD BANK',
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 11, 13, 46)),
              ),

              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: colors.ColorPalette.green,
              ),
              accountEmail: Text(
                'Feed The Need',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 11, 13, 46)),
              ),
            )),
        ListTile(
          leading: const Icon(Icons.home_filled),
          title: const Text('Home'),
          // ignore: avoid_returning_null_for_void
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeTab(),
                ));
            // Add your code for when this image is tapped.
          },
        ),
        ListTile(
          leading: const Icon(Icons.person_2_rounded),
          title: const Text('Propose Victims'),
          // ignore: avoid_returning_null_for_void
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => victiminfo(),
                ));
            // Add your code for when this image is tapped.
          },
        ),
        ListTile(
          leading: const Icon(Icons.food_bank_sharp),
          title: const Text('Donate Food'),
          // ignore: avoid_returning_null_for_void
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDonation(),
                ));
            // Add your code for when this image is tapped.
          },
        ),
        ListTile(
          leading: const Icon(Icons.money),
          title: const Text('Donate Money'),
          // ignore: avoid_returning_null_for_void
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => moneyDonation(),
                ));
            // Add your code for when this image is tapped.
          },
        ),
      ],
    ));
  }
}

class Boxfit {}
