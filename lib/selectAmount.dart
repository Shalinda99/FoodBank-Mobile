import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooddonationForm.dart';
import 'package:flutter_application_1/victimForm.dart';
import 'colors.dart' as colors;
import 'package:flutter_application_1/fooddonationForm.dart';

class selectAmount extends StatefulWidget {
  const selectAmount({super.key});

  @override
  State<selectAmount> createState() => _selectAmountState();
}

// ignore: camel_case_types
class _selectAmountState extends State<selectAmount> {
  void _navigateToNextWidget() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            const selectAmount(), // the widget you want to navigate to
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
                        color: colors.ColorPalette.white,
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
                    height: 30,
                  ),
                  const Text(
                    "Donate Money",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Help us in Donating money!!",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.ColorPalette.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // white bg content
                decoration: const BoxDecoration(
                    color: colors.ColorPalette.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(70))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: colors.ColorPalette.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
