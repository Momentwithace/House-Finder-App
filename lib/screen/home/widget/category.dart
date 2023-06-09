import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = [
    "Top Recommended",
    "Near You",
    "Agency Recommended",
    "Most Popular"
  ];
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              currentSelected = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentSelected == index 
                      ? kPrimaryColor
                      : Colors.transparent,
                  width: 3
                )
              )
            ),
            child: Text(
              categoriesList[index],
              style: TextStyle(
                color: currentSelected == index 
                    ? kPrimaryColor
                    : kbodytext1,
                fontSize: currentSelected == index  
                    ? 16
                    : 14,
                fontWeight: currentSelected == index
                    ? FontWeight.bold
                    : FontWeight.normal
              ),
            ),
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15,),
        itemCount: categoriesList.length, 
      ),
    );
  }
}