import 'package:flutter/material.dart';
import 'package:house_rent/constant/color.dart';
import 'package:house_rent/screen/details/widget/about.dart';
import 'package:house_rent/screen/details/widget/details_app_bar.dart';

import '../../model/house_model.dart';
import 'widget/contact_intro.dart';
import 'widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             DetailAppBar(house: house),
             const SizedBox(height: 20,),
             ContactIntro(house: house,),
             const SizedBox(height: 20,),
             const HouseInfo(),
             const SizedBox(height: 15,),
             const About(),
            const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: (){
             
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                     backgroundColor: kPrimaryColor
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding:const EdgeInsets.symmetric(vertical: 15),
                    child: const Text("Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
               ),
             ) 
        ]),
      ),
    );
  }
}