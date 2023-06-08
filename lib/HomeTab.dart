import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/moneyDonation.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'package:flutter_application_1/victimForm.dart';
import 'colors.dart' as colors;

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 1, top: 10),
                    height: 170,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                colors.ColorPalette.white,
                                colors.ColorPalette.lightGreen,
                              ],
                              begin: FractionalOffset(0.0, 0.4),
                              end: Alignment.topRight,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Color.fromARGB(100, 255, 255, 255),
                              child: Image.asset(
                                "assets/img10.jpg",
                                fit: BoxFit.cover,
                                color: Color.fromARGB(100, 255, 255, 255),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          right: 20.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDonation(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: colors.ColorPalette
                                  .darkGreen, // Change the color here
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 70.0,
                          left: 32.0,
                          child: Text(
                            "Food Donation",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 1, top: 10),
                    height: 170,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                colors.ColorPalette.white,
                                colors.ColorPalette.lightGreen,
                              ],
                              begin: FractionalOffset(0.0, 0.4),
                              end: Alignment.topRight,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Color.fromARGB(100, 255, 255, 255),
                              child: Image.asset(
                                "assets/img11.png",
                                fit: BoxFit.cover,
                                color: Color.fromARGB(100, 255, 255, 255),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          right: 20.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => moneyDonation(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: colors.ColorPalette
                                  .darkGreen, // Change the color here
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 70.0,
                          left: 32.0,
                          child: Text(
                            "Money Donation",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 1, top: 10),
                    height: 170,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                colors.ColorPalette.white,
                                colors.ColorPalette.lightGreen,
                              ],
                              begin: FractionalOffset(0.0, 0.4),
                              end: Alignment.topRight,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Color.fromARGB(100, 255, 255, 255),
                              child: Image.asset(
                                "assets/img1.jpg",
                                fit: BoxFit.cover,
                                color: Color.fromARGB(100, 255, 255, 255),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          right: 20.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => victiminfo(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: colors.ColorPalette
                                  .darkGreen, // Change the color here
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 70.0,
                          left: 32.0,
                          child: Text(
                            "Propose Victims",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
