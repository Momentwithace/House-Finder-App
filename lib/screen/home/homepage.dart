import 'package:flutter/material.dart';
import 'package:house_rent/widget/category.dart';
import 'package:house_rent/widget/recommmended_house.dart';
import 'package:house_rent/widget/search_input.dart';
import 'package:house_rent/widget/welcome_text.dart';

import '../../constant/color.dart';
import '../../widget/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommendedHouse()
          ],
        ),
      )
    );
  }
}