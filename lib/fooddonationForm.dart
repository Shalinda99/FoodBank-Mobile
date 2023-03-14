import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as colors;


class FoodDonationForm extends StatefulWidget {
  const FoodDonationForm({super.key});

  @override
  State<FoodDonationForm> createState() => _FoodDonationFormState();
}

class _FoodDonationFormState extends State<FoodDonationForm> {
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
          ) 
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70,left: 30,right: 30),
              width: MediaQuery.of(context).size.width, // acc to device size
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.arrow_back_ios,size: 20,
                      color: colors.ColorPalette.background,),

                      Expanded(child:Container()),

                       const Icon(Icons.info_outline,size:20,
                      color: colors.ColorPalette.background,),

                    ],
                  ),
                  const SizedBox(height: 30,),
                  const Text(
                    "Food Donation Form",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(height: 30,),
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
           
            Expanded(child:Container(  // white bg content
              decoration:const BoxDecoration(
                  color:colors.ColorPalette.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70)
                  )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30,),

                 
                 
                ]),
               
            ))
          ],
        ),
      
      ),
    );
  }
}