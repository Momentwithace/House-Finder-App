import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';
import 'package:house_rent/widget/circular_icon_button.dart';

import '../../../model/house_model.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();
  RecommendedHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
        height: 300,
        width: 230,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Stack(
          children: [
           Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recommendedList[index].imageUrl),
                fit: BoxFit.cover
                ),
            ),
           ),
        const Positioned(
          right: 15,
          top: 15,
          child: CircularIconButton(
            iconUrl: "assets/icons/bookmark-minus-fill-1241-svgrepo-com.svg", 
            color: kAccent
            )
          ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0, 
          child: Container(
            color: Colors.white54,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recommendedList[index].name,
                    style: const TextStyle(
                      color: kheadline1,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const SizedBox(height: 5,),
                    Text(recommendedList[index].address,
                      style: TextStyle(
                      color: kbodytext1,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),  
                    )
                  ],
                ),
              const CircularIconButton(
                iconUrl: "assets/icons/bookmark-minus-fill-1241-svgrepo-com.svg", 
                color: kAccent
                )
              ],
            ),
          )
        )
          ],
        )
      ), 
      separatorBuilder: (_, index) => const SizedBox(width: 20,), 
      itemCount: recommendedList.length
      ),
    );
  }
}