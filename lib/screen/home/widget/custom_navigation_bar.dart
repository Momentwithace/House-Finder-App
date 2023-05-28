import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constant/color.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   final bottomBarItem = [
//     "home",
//     "message"
//     "bookmark",
//     "home_search",
//     "notification" 
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container( 
//       margin: const EdgeInsets.only(bottom: 25),
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 1,
//             blurRadius: 7,
//             offset: const Offset(0, 3)
//           )
//         ]
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: bottomBarItem
//             .map((e) => SvgPicture.asset("assets/icons/$e.svg",
//             color: kPrimaryColor,)).toList()
//       ),
//     );
//   }
// }

class buildBottomNavBar extends StatelessWidget {
  const buildBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: SvgPicture.asset("assets/icons/home.svg", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "Chat",
          icon: SvgPicture.asset("assets/icons/chats.svg", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "Bookmark",
          icon: SvgPicture.asset("assets/icons/bookmark-check-svgrepo-com.svg", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "Message",
          icon: SvgPicture.asset("assets/icons/home_search.svg", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "Notifictaion",
          icon: SvgPicture.asset("assets/icons/notification.svg", width: 20,)
          )
      ],
    );
  }
}
