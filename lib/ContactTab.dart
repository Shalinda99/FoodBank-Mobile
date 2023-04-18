import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 199, 72, 194),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
      ),
    );
  }
}
