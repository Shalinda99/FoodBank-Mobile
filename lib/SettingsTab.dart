import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors.ColorPalette.green,
            colors.ColorPalette.lightGreen,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(70),
          // bottomLeft: Radius.circular(70),
          // topRight: Radius.circular(70),
          topLeft: Radius.circular(70),
        ),
      ),
    );
  }
}
