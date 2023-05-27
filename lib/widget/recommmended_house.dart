import 'package:flutter/material.dart';

import '../model/house_model.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();
  RecommendedHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
        height: 300,
        width: 230,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Image.asset(recommendedList[index].imageUrl),
      ), 
      separatorBuilder: (_, index) => const SizedBox(width: 20,), 
      itemCount: recommendedList.length
      ),
    );
  }
}