import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: colors.ColorPalette.darkBlue,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(-10.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 4.0,
                )
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 30,
                  child: Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 10, 10, 71)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            height: 180,
            child: Stack(
              children: [
                Positioned(
                  left: 15,
                  child: Material(
                    child: Container(
                      height: 170.0,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/img9.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.lightBlue,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32,
                          top: 50.0,
                          bottom: 50,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Project 1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Title of the Project",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.blue,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(80.0),
                            bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32,
                          top: 50.0,
                          bottom: 50,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "project 2",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Title of the Project",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.lightBlue,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32,
                          top: 50.0,
                          bottom: 50,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "project 3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Title of the Project",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
