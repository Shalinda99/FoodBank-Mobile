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
            height: 100,
            width: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 51, 86),
              ),
              child: Text(
                'FOOD BANK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'About Us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text(
              'Why Food Bank',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.ballot_rounded),
            title: const Text(
              'Projects',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to help screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add_alt_rounded),
            title: const Text(
              'propose',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to help screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.food_bank_rounded),
            title: const Text(
              'Donate',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to help screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.login_rounded),
            title: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigate to help screen
            },
          ),
        ],
      ),
    );
  }
}
