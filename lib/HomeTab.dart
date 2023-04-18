import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 16, 100, 159),
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
    ),
  );
  }
}

