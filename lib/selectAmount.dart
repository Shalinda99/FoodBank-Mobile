import 'package:flutter/material.dart';
import 'package:flutter_application_1/moneyDonation.dart';
import 'colors.dart' as colors;

class selectAmount extends StatefulWidget {
  const selectAmount({Key? key}) : super(key: key);

  @override
  _selectAmountState createState() => _selectAmountState();
}

class _selectAmountState extends State<selectAmount> {
  Color buttonColor1 = Color.fromARGB(255, 208, 207, 206);
  Color buttonColor2 = Color.fromARGB(255, 208, 207, 206);
  Color buttonColor3 = Color.fromARGB(255, 208, 207, 206);
  Color buttonColor4 = Color.fromARGB(255, 208, 207, 206);
  Color buttonColor5 = Color.fromARGB(255, 208, 207, 206);
  Color buttonColor = colors.ColorPalette.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.ColorPalette.green,
              colors.ColorPalette.lightGreen,
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        // capture the gesture on icon
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => moneyDonation()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: colors.ColorPalette.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                        color: colors.ColorPalette.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "           Donate Now",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                width: 500,
                child: Container(
                  decoration: BoxDecoration(
                    color: colors.ColorPalette.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(70),
                      topLeft: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonColor1 = colors.ColorPalette.darkGreen;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor1,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Rs 100",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonColor2 = colors.ColorPalette.darkGreen;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor2,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Rs 100",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonColor3 = colors.ColorPalette.darkGreen;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor3,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Rs 100",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonColor4 = colors.ColorPalette.darkGreen;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor4,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Rs 100",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                buttonColor5 = colors.ColorPalette.darkGreen;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor5,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Rs 100",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enter Amount',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your donation amount',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor,
                              minimumSize: Size(350.0,
                                  40.0), // Adjust the width and height as needed
                            ),
                            child: Text(
                              "Select Payment Method",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                              ),
                            )),
                      ),

                      // Add more buttons as needed
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
