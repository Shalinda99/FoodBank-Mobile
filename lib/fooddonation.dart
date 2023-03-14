import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as colors;


class FoodDonation extends StatefulWidget {
  const FoodDonation({super.key});

  @override
  State<FoodDonation> createState() => _FoodDonationState();
}

class _FoodDonationState extends State<FoodDonation> {
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
                    "Donate Food Items",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const Text(
                    "Help us in this great deed!!",
                    style: TextStyle(
                      fontSize: 20,
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
                  Row(               
                    children: const [
                    SizedBox(width: 30,),  
                    Flexible(
                      child: Text(
                        "How to Donate Food Items?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: colors.ColorPalette.darkBlue,
                        ),
                      ),
                    )
                  ],),
                  const SizedBox(height: 20), 
                  Row(               
                    children: const [
                    SizedBox(width: 30,),  
                    Flexible(
                      child: Text(
                        "First see the food items below, which can be donated to victims..",
                        style: TextStyle(
                          fontSize: 15,
                    
                        ),
                      ),
                    )
                  ],),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder:(_,i){
                        return Row(
                          children: [
                            Container(
                              width: 200,
                              height: 80,
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                 color: colors.ColorPalette.lightBlue,
                              //  boxShadow:const [
                              //   BoxShadow(
                              //     blurRadius: 3,
                              //     offset: Offset(5, 5),
                              //     color: colors.ColorPalette.lightBlue,
                              //   ),
                              //    BoxShadow( // left write
                              //     blurRadius: 3,
                              //     offset: Offset(-5, -5),
                              //     color: colors.ColorPalette.lightBlue,
                              //   ),
                  
                             // ]
                              ),
                              child: Center(
                                child:Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "RICE",
                                    style: TextStyle(
                                      fontSize: 20,
                                      
                                    ),
                                
                                  ),
                                )
                              ),
                            )
                          ],);
                      }
                      ),
                  )
                 
                ]),
               
            ))
          ],
        ),
      
      ),
    );
  }
}