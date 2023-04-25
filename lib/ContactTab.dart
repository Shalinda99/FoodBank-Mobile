import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 126, 173, 198),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(70),
          bottomLeft: Radius.circular(70),
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "\nContact Us\n",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "    We value your feedback and are always looking\n   for ways to improve our products and services\n",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Full Name",
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Type Your Message....",
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                MaterialButton(
                  height: 50.0,
                  minWidth: double.infinity,
                  color: Color(0xff333333),
                  onPressed: () {},
                  child: const Text(
                    "SEND",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
