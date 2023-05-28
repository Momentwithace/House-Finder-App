import 'package:flutter/material.dart';
import 'package:house_rent/screen/details/widget/detial_appbra.dart';

import '../../model/house_model.dart';
import 'widget/contact_intro.dart';

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
             HouseInfo()

        ]),
      ),
    );
  }
}