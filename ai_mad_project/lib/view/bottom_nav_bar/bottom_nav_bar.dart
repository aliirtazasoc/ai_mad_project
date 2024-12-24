import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen/home_screen.dart';

// class BottomNavBar extends StatelessWidget {
//   BottomNavBar({super.key});
//
//   final BottomNavBarController controller = Get.put(BottomNavBarController());
//
//   final List<Widget> pages = [
//     HomeScreen(),
//     const Center(child: Text('Projects Page')),
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
//         alignment: Alignment.bottomCenter,
//         children: [
//           Obx(
//             () => BottomNavigationBar(
//               // showUnselectedLabels: true,
//               backgroundColor: whiteColor,
//               currentIndex: controller.selectedIndex.value,
//               onTap: controller.changeIndex,
//               type: BottomNavigationBarType.fixed,
//               selectedItemColor: primaryColor,
//               unselectedItemColor: greyColor,
//               elevation: 0,
//               items: [
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.home,
//                     size: controller.selectedIndex.value == 0 ? 31 : 30,
//                   ),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.folder,
//                     size: controller.selectedIndex.value == 1 ? 31 : 30,
//                   ),
//                   label: 'Projects',
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: SizedBox.shrink(),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.insert_drive_file,
//                     size: controller.selectedIndex.value == 3 ? 31 : 30,
//                   ),
//                   label: 'Templates',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.propane,
//                     size: controller.selectedIndex.value == 4 ? 31 : 30,
//                   ),
//                   label: 'Pro',
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 11, // Adjust this value for positioning
//             child: GestureDetector(
//               onTap: () => controller.changeIndex(2),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: whiteColor, // Background color for the icon
//                 ),
//                 child: const Icon(
//                   Icons.add_circle,
//                   color: primaryColor,
//                   size: 51, // Larger size for the center icon
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavBarController controller = Get.put(BottomNavBarController());

  final List<Widget> pages = [
    HomeScreen(),
    const Center(child: Text('Projects Page')),
    const Center(child: Text('Add Page')),
    const Center(child: Text('Templates Page')),
    const Center(child: Text('Pro Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            // bottom: 5,
            // right: 5,
            // left: 5,
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: primaryColor, width: 1),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Obx(
                () => BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  currentIndex: controller.selectedIndex.value,
                  onTap: controller.changeIndex,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: primaryColor,
                  unselectedItemColor: greyColor,
                  elevation: 0,
                  items: [
                    _buildNavItem(Icons.home, 'Home', 0),
                    _buildNavItem(Icons.folder, 'Projects', 1),
                    _buildNavItem(Icons.add_a_photo, 'Doctor', 2),
                    // ,const BottomNavigationBarItem(
                    //     icon: SizedBox.shrink(),
                    //     label: '',
                    //   )
                    _buildNavItem(Icons.message, 'Templates', 3),
                    _buildNavItem(Icons.person, 'Profile', 4),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: controller.selectedIndex.value == index
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Icon(
                icon,
                size: 30,
                color: whiteColor,
              ),
            )
          : Icon(
              icon,
              size: 28,
            ),
      label: label,
    );
  }
}
