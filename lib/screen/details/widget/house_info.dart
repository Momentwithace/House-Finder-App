import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constant/color.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Row(
            children: [
              MenuInfo(
                imageUrl: "assets/icons/bedroom-hotel-svgrepo-com.svg", 
                content: "5 Bedroom\n3 Master Bedroom"
                ),
              MenuInfo(
                imageUrl: "assets/icons/bathroom-cleaning-housekeeping-toilet-svgrepo-com.svg", 
                content: "5 Bathroom\n3 Master Bedroom"
                ),
              MenuInfo(
                imageUrl: "assets/icons/kitchen-cabinets-2-svgrepo-com.svg", 
                content: "5 Bathroom\n3 Master Bedroom"
                ),
              MenuInfo(
                imageUrl: "assets/icons/rent-a-car-svgrepo-com.svg", 
                content: "5 Bathroom\n3 Master Bedroom"
                )
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({super.key, required this.imageUrl, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          const SizedBox(width: 20,),
          Text(content,
          style: TextStyle(
            color: kbodytext1,
            fontSize: 12
          ),
          )
        ],
      ),
    );
  }
}