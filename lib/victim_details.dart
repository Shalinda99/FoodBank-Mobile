class Victim {
  final String nic;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String no;
  final String street;
  final String city;
  final String description;

  Victim({
    required this.nic,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.no,
    required this.street,
    required this.city,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'nic': nic,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'no': no,
      'street': street,
      'city': city,
      'description': description,
    };
  }
}
