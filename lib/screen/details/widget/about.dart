import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kheadline1,
            fontSize: 20
          ),),
          const SizedBox(height: 10,),
          Text("Come stay in this beautiful house ! Whether you’re trying to get away from the hustle and bustle of the city or want to fulfill your love of adventure - \nThis  house has everything you could hope for. \nThis spacious house can easily accommodate big groups and has an open concept floor plan with big windows that keep the house \nreally bright and sunny. ",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: kbodytext1,
            fontSize: 18
          ),)
        ],
      ),
    );
  }
}