import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/victimDetails.dart';
import 'package:intl/intl.dart'; // for the date format
import 'colors.dart' as colors;
import 'dart:convert';
import 'package:http/http.dart' as http;



class VictimForm extends StatefulWidget {
  const VictimForm({Key? key}) : super(key: key);

  @override
  State<VictimForm> createState() => _VictimFormState();
}



class _VictimFormState extends State<VictimForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController nicController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController noController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Create a map to hold the form data
      Map<String, dynamic> formData = {
        'Nic': nicController.text,
        'FirstName': nameController.text,
        'LastName': lastnameController.text,
        'PhoneNumber': phonenumberController.text,
        'No': noController.text,
        'Street': streetController.text,
        'City': cityController.text,
        'Description': descriptionController.text,
        'isVerified': true,
      'isDeliverySelected' : false,
      'isAccepted' : true,
      'packageType' : null ,

      };

      // Convert the form data to JSON format
      String jsonData = jsonEncode(formData);

      // Set the backend API endpoint URL
      String backendEndpoint =
          'http://localhost:8080/Victim/saveVictimDetails'; // Replace with your backend API endpoint

      // Send the form data to the backend
     final response = await http.post(
  Uri.parse(backendEndpoint),
  body: jsonData,
  headers: {'Content-Type': 'application/json'},
);

if (response.statusCode == 200) {
  print('Form data submitted successfully');
} else {
  print('Error submitting form data. Please try again later.');
}

    }
  }

  

  Widget _buildFirstNameField() {
    return TextFormField(
      maxLength: 40,
      controller: nameController,
      decoration: const InputDecoration(
        labelText: 'First Name',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your first name';
        }
        return null;
      },
    );
  }

  Widget _buildLastNameField() {
    return TextFormField(
      maxLength: 40,
      controller: lastnameController,
      decoration: const InputDecoration(
        labelText: 'Last Name',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your last name';
        }
        return null;
      },
    );
  }

  Widget _buildNicField() {
    return TextFormField(
      maxLength: 12,
      controller: nicController,
      decoration: const InputDecoration(
        labelText: 'NIC Number',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the NIC Number';
        }
        final RegExp nicRegex = RegExp(r'^[0-9]{9}([vVxX]|[0-9]{3})$');
        if (!nicRegex.hasMatch(value)) {
          return 'Please enter a valid NIC Number';
        }
        return null;
      },
    );
  }

  Widget _buildPhoneNumberField() {
    return TextFormField(
      maxLength: 10,
      controller: phonenumberController,
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        labelText: 'Phone Number',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the Phone Number';
        }
        final RegExp regExp = RegExp(r'^(0|94)[0-9]{9}$');
        if (!regExp.hasMatch(value)) {
          return 'Please enter a valid Phone Number';
        }
        return null;
      },
    );
  }

  Widget _buildNoField() {
    return TextFormField(
      maxLength: 10,
      controller: noController,
      decoration: const InputDecoration(
        labelText: 'No',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your house number';
        }
        return null;
      },
    );
  }

  Widget _buildStreetField() {
    return TextFormField(
      maxLength: 40,
      controller: streetController,
      decoration: const InputDecoration(
        labelText: 'Street',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your street name';
        }
        return null;
      },
    );
  }

  Widget _buildCityField() {
    return TextFormField(
      maxLength: 40,
      controller: cityController,
      decoration: const InputDecoration(
        labelText: 'City',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your city name';
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      maxLength: 40,
      controller: descriptionController,
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
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => victiminfo(),
                            ),
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
                    height: 20,
                  ),
                  const Text(
                    "Your Information will not be disclosed to any external party",
                    style: TextStyle(
                      fontSize: 15,
                      color: colors.ColorPalette.background,
                    ),
                  ),
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
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          // Input fields
                          _buildFirstNameField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildLastNameField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildNicField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildPhoneNumberField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildNoField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildStreetField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildCityField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          _buildDescriptionField(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: colors.ColorPalette
                                  .darkGreen, // set the background color of the button
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process the form data
                                // print valid form
                                print("FirstName: ${nameController.text}");
                                print("LastName: ${lastnameController.text}");
                                print("Nic: ${nicController.text}");
                                print("PhoneNumber: ${phonenumberController.text}");
                                print("No: ${noController.text}");
                                print("Street: ${streetController.text}");
                                print("City: ${cityController.text}");
                                print(
                                    "Description: ${descriptionController.text}");

                                submitForm();
                              }
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
