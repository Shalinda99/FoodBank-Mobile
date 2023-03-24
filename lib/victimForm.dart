import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'package:intl/intl.dart'; // for the date format
import 'colors.dart' as colors;

class victimform extends StatefulWidget {
  const victimform({super.key});

  @override
  State<victimform> createState() => _victimformState();
}

class _victimformState extends State<victimform> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildFirstNameField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'FirstName',
      ),
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter your first Name';
        }
        return null;
      },
    );
  }

  Widget _buildLastNameField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'LastName',
      ),
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter the Last Name';
        }
        return null;
      },
    );
  }

  Widget _buildNicField() {
    return TextFormField(
      maxLength: 12,
      decoration: const InputDecoration(
        labelText: 'Nic Number',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the NIC Number';
        }
        if (value.length == 10) {
          final RegExp regExp = RegExp(r'^[0-9]{9}[vVxX]$');
          if (!regExp.hasMatch(value)) {
            return 'Please enter a valid NIC Number';
          }
        } else if (value.length == 12) {
          final RegExp regExp = RegExp(r'^[0-9]{12}$');
          if (!regExp.hasMatch(value)) {
            return 'Please enter a valid NIC Number';
          }
        } else {
          return 'Please enter a valid NIC Number';
        }
        return null;
      },
    );
  }

  Widget _buildPhoneNumberField() {
    return TextFormField(
      maxLength: 12,
      decoration: const InputDecoration(
        labelText: 'Phone Number',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the Phone Number';
        }
        final RegExp regExp = RegExp(r'^((\+94)?(0)?)[0-9]{9}$');
        if (!regExp.hasMatch(value)) {
          return 'Please enter a valid Phone Number';
        }
        return null;
      },
    );
  }

  Widget _buildAddressField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'Address',
      ),
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter the Address';
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'Description',
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => victiminfo()),
                          );
                        },
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
                    "Your Information will not be disclose to any external party",
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
                        // const SizedBox(
                        //   height: 16.0,
                        // ),
                        // //input fields

                        // _buildFirstNameField(),
                        // const SizedBox(
                        //   height: 16.0,
                        // ),
                        // _buildLastNameField(),
                        // const SizedBox(
                        //   height: 16.0,
                        // ),
                        _buildNicField(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        _buildPhoneNumberField(),
                        const SizedBox(
                          height: 16.0,
                        ),

                        // _buildAddressField(),
                        // const SizedBox(
                        //   height: 16.0,
                        // ),
                        // _buildDescriptionField(),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Process the form data
                              // print valid form
                            }
                          },
                          child: const Text('Submit'),
                        ),
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
