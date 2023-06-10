import 'package:intl/intl.dart';

class FoodDonation {
 
  final String donationAddress;
  final DateTime donationDate;
  final String nearestLocation;
  final String selectedOption;

  FoodDonation({
   
    required this.donationAddress,
    required this.donationDate,
    required this.nearestLocation,
    required this.selectedOption,
  });

  Map<String, dynamic> toJson() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formattedDate = formatter.format(donationDate);

    return {
      
      'donationAddress': donationAddress,
      'donationDate': formattedDate,
      'nearestLocation': nearestLocation,
      'selectedOption': selectedOption,
    };
  }
}
