import 'package:flutter/material.dart';
import 'package:flutter_application_1/navBar.dart';
import 'colors.dart' as colors;
import 'package:flutter_application_1/HomeTab.dart';
import 'package:flutter_application_1/ContactTab.dart';
import 'package:flutter_application_1/SettingsTab.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    HomeTab(),
    ContactTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        elevation: 2.0,
        backgroundColor: colors.ColorPalette.orange,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            colors.ColorPalette.darkBlue, // set the background color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Color.fromARGB(
                    255, 255, 255, 255)), // set the color of the icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone,
                color: Color.fromARGB(
                    255, 255, 255, 255)), // set the color of the icon
            label: 'Contact Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Color.fromARGB(
                    255, 255, 255, 255)), // set the color of the icon
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
