// import 'package:ai_mad_project/constants/color_constants.dart';
// import 'package:ai_mad_project/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../add_plan_screen/add_plan_screen.dart';
// import '../home_screen/home_screen.dart';
//
// class BottomNavBar extends StatelessWidget {
//   BottomNavBar({super.key});
//
//   final BottomNavBarController controller = Get.put(BottomNavBarController());
//
//   final List<Widget> pages = [
//     HomeScreen(),
//     AddPlanScreen(),
//     const Center(child: Text('Add Page')),
//     const Center(child: Text('Templates Page')),
//     const Center(child: Text('Pro Page')),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() => pages[controller.selectedIndex.value]),
//       bottomNavigationBar: Stack(
//         children: [
//           Positioned(
//             // bottom: 5,
//             // right: 5,
//             // left: 5,
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 5),
//               decoration: BoxDecoration(
//                 color: whiteColor,
//                 borderRadius: BorderRadius.circular(15),
//                 border: Border.all(color: primaryColor, width: 1),
//                 boxShadow: [
//                   BoxShadow(
//                     color: primaryColor.withOpacity(0.3),
//                     spreadRadius: 5,
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: Obx(
//                 () => BottomNavigationBar(
//                   backgroundColor: Colors.transparent,
//                   currentIndex: controller.selectedIndex.value,
//                   onTap: controller.changeIndex,
//                   type: BottomNavigationBarType.fixed,
//                   selectedItemColor: primaryColor,
//                   selectedLabelStyle: const TextStyle(fontSize: 12),
//                   unselectedItemColor: greyColor,
//                   elevation: 0,
//                   items: [
//                     _buildNavItem(Icons.home_outlined, 'Home', 0),
//                     _buildNavItem(Icons.add_alert_outlined, 'Add Plan', 1),
//                     _buildNavItem(Icons.message, 'Templates', 2),
//                     _buildNavItem(Icons.person, 'Profile', 3),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   BottomNavigationBarItem _buildNavItem(
//       IconData icon, String label, int index) {
//     return BottomNavigationBarItem(
//       icon: controller.selectedIndex.value == index
//           ? Container(
//               padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: primaryColor,
//                 boxShadow: [
//                   BoxShadow(
//                     color: primaryColor.withOpacity(0.3),
//                     spreadRadius: 1,
//                     blurRadius: 10,
//                     offset: const Offset(0, 15),
//                   ),
//                 ],
//               ),
//               child: Icon(
//                 icon,
//                 size: 28,
//                 color: whiteColor,
//               ),
//             )
//           : Icon(icon, size: 25),
//       label: label,
//     );
//   }
// }
import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_plan_screen/add_plan_screen.dart';
import '../home_screen/home_screen.dart';
import '../profile_screen/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavBarController controller = Get.put(BottomNavBarController());
  final PageController _pageController = PageController();

  final List<Widget> pages = [
    HomeScreen(),
    AddPlanScreen(),
    const Center(child: Text('Profile Page')),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => pages[controller.selectedIndex.value],
      ),
      bottomNavigationBar: Container(
        // height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [whiteColor, primaryColor.withOpacity(0.01)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 17),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: primaryColor, width: 1),
          ),
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              currentIndex: controller.selectedIndex.value,
              onTap: (index) {
                controller.changeIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primaryColor,
              selectedLabelStyle: const TextStyle(fontSize: 12),
              unselectedItemColor: greyColor,
              elevation: 0,
              items: [
                _buildNavItem(Icons.home_outlined, 'Home', 0),
                _buildNavItem(Icons.add_alert_outlined, 'Add Plan', 1),
                _buildNavItem(Icons.message, 'Templates', 2),
                _buildNavItem(Icons.person, 'Profile', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: controller.selectedIndex.value == index
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: Icon(
                icon,
                size: 28,
                color: whiteColor,
              ),
            )
          : Icon(icon, size: 28),
      label: label,
    );
  }
}
