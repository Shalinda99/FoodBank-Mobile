import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for the date format
import 'colors.dart' as colors;

class FoodDonationForm extends StatefulWidget {
  const FoodDonationForm({Key? key}) : super(key: key);

  @override
  State<FoodDonationForm> createState() => _FoodDonationFormState();
}


class _FoodDonationFormState extends State<FoodDonationForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String> locations = ['Galle', 'Matara', 'Ambalangod'];
  String selectedLocation = 'Galle';

  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate; //null




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
    );
  }

  Widget _buildLocation() {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'Nearest Location',
      ),
      value: selectedLocation,
      onChanged: (String? newValue) {
        setState(() {
          selectedLocation = newValue!;
        });
      },
      items: locations.map((String location) {
        return DropdownMenuItem<String>(
          value: location,
          child: Text(location),
        );
      }).toList(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please choose a location';
        }
        return null;
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
  

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  } // optional used for date field

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
                    "Food Donation Form",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Fill this form to reach us to your donation..",
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
                        _buildLocation(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        _buildDonationDate(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        

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
