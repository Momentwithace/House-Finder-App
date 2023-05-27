import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Ace",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: kbodytext1
          ),),
          const SizedBox(height: 10,),
          const Text("Find your sweet home",
           style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kheadline1
          ))
        ],
      ),
    );
  }
}