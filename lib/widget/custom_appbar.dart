import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton
            (onPressed: () {
  
            }, 
            icon: SvgPicture.asset("assets/icons/menu-hamburger-svgrepo-com.svg")),
            const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/headshot.jpeg"
              ),
            )
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize =>const Size.fromHeight(50);
}