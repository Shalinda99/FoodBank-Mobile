import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooddonationForm.dart';
import 'colors.dart' as colors;
import 'package:flutter_application_1/fooddonationForm.dart'; // import the widget you want to navigate to

class FoodDonation extends StatefulWidget {
  const FoodDonation({Key? key});

  @override
  State<FoodDonation> createState() => _FoodDonationState();
}

class _FoodDonationState extends State<FoodDonation> {
  void _navigateToNextWidget() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            const FoodDonationForm(), // the widget you want to navigate to
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.ColorPalette.darkOrange ,
              colors.ColorPalette.orange,
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width, // acc to device size
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: colors.ColorPalette.background,
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                        color: colors.ColorPalette.background,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Donate Food Items",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Help us in this great deed!!",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.ColorPalette.background,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // white bg content
                decoration: const BoxDecoration(
                    color: colors.ColorPalette.background,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(70))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "How to Donate Food Items?",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                               
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            child: Text(
                              "Follow the steps below to make your food donation easily",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Text(
                          '1. You can donate food items like Rice, Dhal, Sugar, Milk powder, Floor, Cooking Oil, Dry food & Buiscuits. We accept any quantity you can provide',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.orange,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Text(
                          '2. Then you can fill the donation form which will appear next. Here we seek for the information to reach your donations fast.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: colors.ColorPalette.background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Text(
                          '3. To make it easier to you we have to options. Either you can come to our warehouse and donate us or we can reach to your place to collect them',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                      height: 20,
                    ),
                   
                   
                   
                      const Text(
                        'Click here to continuue',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed:
                            _navigateToNextWidget, // call function to navigate to next widget
                        child: const Text("Continue"),
                      ),
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
