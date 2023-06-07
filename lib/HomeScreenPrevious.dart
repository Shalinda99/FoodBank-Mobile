import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/Home1.dart';
import 'colors.dart' as colors;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "Feed The Need",
                          style: TextStyle(
                            fontSize: 34,
                            color: Color.fromARGB(255, 248, 246, 246),
                          ),
                        ),
                        SizedBox(height: 4), // add some space between the lines
                        Text(
                          "Together, we can make a better\n tomorrow a reality",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.58,
                    padding: EdgeInsets.only(top: 40, bottom: 30),
                    decoration: BoxDecoration(
                      color: colors.ColorPalette.orange,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(100)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Food Bank Is On A Mission \n       To Abolish Hunger.",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "The Food Bank is an app that facilitates efficient and user-friendly donations of money and food to help those affected by food crises. Its objective is to encourage individuals to perform social tasks and identify those in need.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Material(
                          color: colors.ColorPalette.darkBlue,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home1(),
                                  ));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 80),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
