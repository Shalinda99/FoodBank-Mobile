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
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color.fromARGB(255, 13, 12, 102),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
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
                  top: 110,
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
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  child: Material(
                    child: Container(
                      height: 180.0,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                        //     new BoxShadow(
                        //       color: Colors.grey.withOpacity(0.3),
                        //       offset: new Offset(-10.0, 10.0),
                        //       blurRadius: 20.0,
                        //       spreadRadius: 4.0)],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
