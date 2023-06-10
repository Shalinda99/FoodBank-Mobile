import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for the date format
import 'colors.dart' as colors;
import 'dart:convert';
import 'fooddonation.dart';
import 'package:http/http.dart' as http;

class FoodDonationForm extends StatefulWidget {
  const FoodDonationForm({Key? key}) : super(key: key);

  @override
  State<FoodDonationForm> createState() => _FoodDonationFormState();
}
final _formKey = GlobalKey<FormState>();

class _FoodDonationFormState extends State<FoodDonationForm> {
  @override
  void initState() {
    super.initState();
    locationNotifier.value = selectedLocation;
    optionNotifier.value = selectedOption;
  }

  //final _formKey = GlobalKey<FormState>();

  final List<String> locations = [
    'choose the location',
    'Galle',
    'Matara',
    'Ambalangoda'
  ];
  String selectedLocation = 'choose the location';

  final List<String> options = [
    'choose a option',
    'I will come and donate you',
    'You have to collect my donation'
  ];
  String selectedOption = 'choose a option';

  TextEditingController addressController = TextEditingController();
  ValueNotifier<String?> locationNotifier = ValueNotifier<String?>(null);
  TextEditingController _dateController = TextEditingController();
  ValueNotifier<String?> optionNotifier = ValueNotifier<String?>(null);
  DateTime? _selectedDate; //null


  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Create a map to hold the form data
      Map<String, dynamic> formData = {
        'Address': addressController.text,
        'Location': locationNotifier.value,
        'Date': _dateController.text,
        'SelectOption': optionNotifier.value,
        
      };

      // Convert the form data to JSON format
      String jsonData = jsonEncode(formData);

      // Set the backend API endpoint URL
      String backendEndpoint =
          'http://localhost:8080/FoodDonate/saveDonation'; // Replace with your backend API endpoint

      // Send the form data to the backend
      final response = await http.post(
        Uri.parse(backendEndpoint),
        body: jsonData,
        headers: {'Content-Type': 'application/json'},
      );

 
    }
  }

   final _formKey = GlobalKey<FormState>();


  Widget _buildAddressField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'Address',
      ),
      maxLines: 2,
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter your address';
        }
        return null;
      },
      controller: addressController,
    );
  }

  // Widget _buildLocation() {
  //   return DropdownButtonFormField<String>(
  //     decoration: const InputDecoration(
  //       labelText: 'Nearest Location',
  //     ),
  //     value: selectedLocation,
  //     onChanged: (String? newValue) {
  //       setState(() {
  //         selectedLocation = newValue!;
  //       });
  //     },
  //     items: locations.map((String location) {
  //       return DropdownMenuItem<String>(
  //         value: location,
  //         child: Text(location),
  //       );
  //     }).toList(),
  //     validator: (value) {
  //       if (value == null || value.isEmpty || value == 'choose the location') {
  //         return 'Please choose a location';
  //       }
  //       return null;
  //     },

  //   );
  // }

  Widget _buildLocation() {
    return ValueListenableBuilder<String?>(
      valueListenable: locationNotifier,
      builder: (BuildContext context, String? value, Widget? child) {
        return DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Nearest Location',
          ),
          value: value,
          onChanged: (String? newValue) {
            locationNotifier.value = newValue;
          },
          items: locations.map((String location) {
            return DropdownMenuItem<String>(
              value: location,
              child: Text(location),
            );
          }).toList(),
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                value == 'choose the location') {
              return 'Please choose a location';
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildDonationDate() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Donation Date',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a date';
        }
        return null;
      },
      
      onTap: () async {
        // Show the date picker and get the selected date
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );
        // If a date was selected, update the text field
        if (selectedDate != null) {
          setState(() {
            _selectedDate = selectedDate;
            _dateController.text =
                DateFormat('yyyy-MM-dd').format(_selectedDate!);
          });
        }
      },
      controller: _dateController,
      readOnly: true,
    );
  }

  // Widget _buildSelectOption() {
  //   return DropdownButtonFormField<String>(
  //     // decoration: const InputDecoration(
  //     //   labelText: 'To continue with the food donation you have two options, either you can bring them to us or we can come and collect them. please choose a option.' ,
  //     // ),
  //     value: selectedOption,
  //     onChanged: (String? newValue) {
  //       setState(() {
  //         selectedOption = newValue!;
  //       });
  //     },
  //     items: options.map((String option) {
  //       return DropdownMenuItem<String>(
  //         value: option,
  //         child: Text(option),
  //       );
  //     }).toList(),
  //     validator: (value) {
  //       if (value == null || value.isEmpty || value == 'choose a option') {
  //         return 'Please choose a option';
  //       }
  //       return null;
  //     },
  //   );
  // }

  Widget _buildSelectOption() {
    return ValueListenableBuilder<String?>(
      valueListenable: optionNotifier,
      builder: (BuildContext context, String? value, Widget? child) {
        return DropdownButtonFormField<String>(
          
          value: value,
          onChanged: (String? newValue) {
            optionNotifier.value = newValue;
          },
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          validator: (value) {
            if (value == null || value.isEmpty || value == 'choose a option') {
              return 'Please choose an option';
            }
            return null;
          },
        );
      },
    );
  }

  // @override
  // void dispose() {
  //   _dateController.dispose();
  //   super.dispose();
  // } // optional used for date field

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
                        // capture the gesture on icon
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FoodDonation()),
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
                    height: 30,
                  ),
                  const Text(
                    "Food Donation Form",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Fill this form to reach us to your donation..",
                    style: TextStyle(
                      fontSize: 15,
                      color: colors.ColorPalette.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: colors.ColorPalette.white,
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
                            height: 16.0,
                          ),
                          //input fields

                          _buildAddressField(),
                          const SizedBox(
                            height: 16.0,
                          ),
                          _buildLocation(),
                          const SizedBox(
                            height: 16.0,
                          ),
                          _buildDonationDate(),
                          const SizedBox(
                            height: 50.0,
                          ),
                          const Text(
                              'To continue with the food donation you have two options, either you can bring them to us or we can come and collect them. please choose a option.',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(
                            height: 30.0,
                          ),

                          _buildSelectOption(),
                          const SizedBox(
                            height: 50.0,
                          ),

                          ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      // Process the form data
      // print valid form
      print("address: ${addressController.text}");
      print("location: ${locationNotifier.value}");
      print("date: ${_dateController.text}");
      print("option: ${optionNotifier.value}");

      submitForm(); // Move the function call here
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
            )
          ],
        ),
      ),
    );
  }
}
