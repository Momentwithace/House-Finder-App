import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constant/color.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Row(
            children: [
              MenuInfo(
                imageUrl: "assets/icons/bed-bedroom-comfortable-svgrepo-com.svg",
                size: 30, 
                content: "5 Bedroom\n3 Master Bedroom"
                ),
              MenuInfo(
                imageUrl: "assets/icons/bathroom-furniture-hygiene-svgrepo-com (1).svg", 
                size: 30,
                content: "5 Bathroom\n3 Toilet"
                ),
            ]
          ),
          SizedBox(height: 10,),
          Row(
            children: [
                  MenuInfo(
                imageUrl: "assets/icons/kitchen-cabinets-2-svgrepo-com (1).svg", 
                content: "2 Kitchen\n120 sqt",
                size: 30,
                ),
              MenuInfo(
                imageUrl: "assets/icons/rent-a-car-svgrepo-com.svg", 
                content: "5 PackingLot\n170 sft",
                size: 30,
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
  final double? size;
  const MenuInfo({super.key, required this.imageUrl, required this.content, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl, width: size,),
            const SizedBox(width: 20,),
            Text(content,
            style: TextStyle(
              color: kbodytext1,
              fontSize: 12
            ),
            )
          ],
        ),
      ),
    );
  }
}