import 'package:flutter/material.dart';
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
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height / 2.75,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //       bottomRight: Radius.circular(100),
                //     ),
                //     image: DecorationImage(
                //       image: AssetImage("assets/img3.jpg"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //   child: Align(
                //     alignment: Alignment.bottomLeft,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisSize: MainAxisSize.min,
                //       children: const [
                //         Text(
                //           "Feed The Need",
                //           style: TextStyle(
                //             fontSize: 34,
                //             color: Color.fromARGB(255, 248, 246, 246),
                //           ),
                //         ),
                //         SizedBox(height: 4), // add some space between the lines
                //         Text(
                //           "Together, we can make a better\n tomorrow a reality",
                //           style: TextStyle(
                //             fontSize: 22,
                //             color: Color.fromARGB(255, 255, 255, 255),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(top: 40, bottom: 30),
                    decoration: BoxDecoration(
                      color: colors.ColorPalette.green,
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/img4.png",
                            scale: 0.8,
                          ),
                        ),
                        Text(
                          "Welcome!!!",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.9),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Food Bank Is On A Mission To \n Abolish Hunger.\n \n \n \n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.7),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 30),
                            Material(
                              color: colors.ColorPalette.darkGreen,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home1(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 50),
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
                            SizedBox(
                                width:
                                    10), // add some spacing between the buttons
                            Material(
                              color: colors.ColorPalette.darkGreen,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home1(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 50),
                                  child: Text(
                                    "SKIP",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
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
