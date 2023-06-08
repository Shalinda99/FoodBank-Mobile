
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ContactTab.dart';
import 'package:flutter_application_1/fooddonation.dart';
import 'package:flutter_application_1/moneyDonation.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'colors.dart' as colors;

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

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
                  height: MediaQuery.of(context).size.height / 3.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img5.jpg"),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        // Text(
                        //   "Feed The Need",
                        //   style: TextStyle(
                        //     fontSize: 34,
                        //     color: Color.fromARGB(255, 248, 246, 246),
                        //   ),
                        // ),
                        SizedBox(height: 4), // add some space between the lines
                        // Text(
                        //   "Together, we can make a better\n tomorrow a reality",
                        //   style: TextStyle(
                        //     fontSize: 22,
                        //     color: Color.fromARGB(255, 255, 255, 255),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    padding: EdgeInsets.only(top: 40, bottom: 30),
                    decoration: BoxDecoration(
                      color: colors.ColorPalette.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Together We're On A Plan To \n        End Human Hunger",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodDonation(),
                                ));
                            // Add your code for when this image is tapped.
                          },
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 50.0),
                                child: Image.asset(
                                  "assets/img7.png",
                                  width: 70.0,
                                  height: 70.0,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      25.0), // Add some space between the image and text
                              Material(
                                color: colors.ColorPalette.darkGreen,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FoodDonation(),
                                        ));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 30),
                                    child: Text(
                                      "Food Donation",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.9),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => moneyDonation(),
                                ));
                            // Add your code for when this image is tapped.
                          },
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 50.0),
                                child: Image.asset(
                                  "assets/img6.png",
                                  width: 70.0,
                                  height: 70.0,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      25.0), // Add some space between the image and text
                              Material(
                                color: colors.ColorPalette.darkBlue,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => moneyDonation(),
                                        ));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 30),
                                    child: Text(
                                      "Money Donation",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.9),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => victiminfo(),
                                ));
                            // Add your code for when this image is tapped.
                          },
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 50.0),
                                child: Image.asset(
                                  "assets/img8.png",
                                  width: 70.0,
                                  height: 70.0,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      25.0), // Add some space between the image and text
                              Material(
                                color: colors.ColorPalette.darkBlue,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => victiminfo(),
                                        ));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 30),
                                    child: Text(
                                      "Propose Victims",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)
                                                .withOpacity(0.9),
                                      ),
                                    ),
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
          ],
        ),
      ),
    );
  }
}
