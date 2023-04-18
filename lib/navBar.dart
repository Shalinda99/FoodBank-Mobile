import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
            height: 110,
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'FOOD BANK',
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 11, 13, 46)),
              ),

              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              accountEmail: Text(
                'Feed The Need',
                style: TextStyle(
                    fontSize: 15.0, color: Color.fromARGB(255, 11, 13, 46)),
              ),
            )),
        ListTile(
          leading: const Icon(Icons.home_filled),
          title: const Text('About Us'),
          // ignore: avoid_returning_null_for_void
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.question_mark_outlined),
          title: const Text('Why Food Bank?'),
          // ignore: avoid_returning_null_for_void
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.notes_outlined),
          title: const Text('Projects'),
          // ignore: avoid_returning_null_for_void
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.food_bank_sharp),
          title: const Text('Donate Food'),
          // ignore: avoid_returning_null_for_void
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.money),
          title: const Text('Donate Money'),
          // ignore: avoid_returning_null_for_void
          onTap: () => null,
        )
      ],
    ));
  }
}

class Boxfit {}
