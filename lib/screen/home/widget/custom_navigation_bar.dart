import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constant/color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final bottomBarItem = [
    "message",
    "home"
    "bookmark",
    "home_search",
    "notification" 
  ];
    CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomBarItem
            .map((e) => SvgPicture.asset("assets/icons/$e.svg",
            color: kPrimaryColor,)).toList()
      ),
    );
  }
}