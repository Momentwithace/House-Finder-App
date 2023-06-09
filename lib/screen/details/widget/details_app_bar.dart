import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';
import 'package:house_rent/model/house_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle
                      ),
                    child: SvgPicture.asset("assets/icons/arrow-back-svgrepo-com.svg"),
                    ),
                  ),
                   Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: kAccent,
                      shape: BoxShape.circle
                    ),
                  child: SvgPicture.asset("assets/icons/bookmark-check-svgrepo-com.svg"),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}