import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for the date format
import 'colors.dart' as colors;

class victimform extends StatefulWidget {
  const victimform({super.key});

  @override
  State<victimform> createState() => _victimformState();
}

class _victimformState extends State<victimform> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildAddressField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'Address',
      ),
      //maxLines: 2,
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter your address';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.ColorPalette.darkBlue,
              colors.ColorPalette.blue,
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
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        // capture the gesture on icon
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => FoodDonation()),
                        //   );
                        // },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: colors.ColorPalette.background,
                        ),
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
                    "Victim Information Form",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "F..",
                    style: TextStyle(
                      fontSize: 15,
                      color: colors.ColorPalette.background,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: colors.ColorPalette.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16.0,
                        ),
                        //input fields

                        _buildAddressField(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        //     _buildLocation(),
                        //     const SizedBox(
                        //       height: 16.0,
                        //     ),
                        //     _buildDonationDate(),
                        //     const SizedBox(
                        //       height: 16.0,
                        //     ),
                        //   const Text(
                        // 'To continue with the food donation you have two options, either you can bring them to us or we can come and collect them. please choose a option.',
                        // style: TextStyle(
                        //   fontSize: 15,
                        // )
                        // ),

                        // _buildSelectOption(),
                        //   const SizedBox(
                        //   height: 16.0,
                        // ),

                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (_formKey.currentState!.validate()) {
                        //       // Process the form data
                        //       // print valid form
                        //     }
                        //   },
                        //   child: const Text('Submit'),
                        // ),
                      ],
                    ),
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
