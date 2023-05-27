import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';
import 'package:house_rent/widget/circular_icon_button.dart';

import '../../../model/house_model.dart';

class BestOffer extends StatelessWidget {
  final listOfOffer = House.generateBestOffer();
  BestOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Best Offer", 
              style: TextStyle(
                color: kheadline1,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              Text("See All", 
              style: TextStyle(
                color: kbodytext1,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        const SizedBox(height: 10,),
        ...listOfOffer.map((e) => 
        Container(
           margin: const EdgeInsets.only(bottom: 10),
           padding: const EdgeInsets.all(10),
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
           ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(e.imageUrl),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ) ,
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.name, 
                      style: const TextStyle(
                        color: kheadline1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      const SizedBox(width: 10,),
                      Text(e.address,
                       style: TextStyle(
                        color: kbodytext1,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                      ),
                      )
                    ],
                  ),
                ],
              ),
              const Positioned(
                right: 0,
                child: CircularIconButton(
                  iconUrl: "assets/icons/heart-logo-svgrepo-com.svg", 
                  color: Colors.grey)
                  )
            ],
          ),
        )).toList()
        ],
      ),
    );
  }
}