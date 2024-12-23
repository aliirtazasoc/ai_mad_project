import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavBarController controller = Get.put(BottomNavBarController());

  final List<Widget> pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Projects Page')),
    Center(child: Text('Add Page')),
    Center(child: Text('Templates Page')),
    Center(child: Text('Pro Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => BottomNavigationBar(
              backgroundColor: whiteColor,
              currentIndex: controller.selectedIndex.value,
              onTap: controller.changeIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primaryColor,
              unselectedItemColor: greyColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: controller.selectedIndex.value == 0 ? 31 : 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.folder,
                    size: controller.selectedIndex.value == 1 ? 31 : 30,
                  ),
                  label: 'Projects',
                ),
                // Placeholder for center icon (empty to prevent shifting)
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.insert_drive_file,
                    size: controller.selectedIndex.value == 3 ? 31 : 30,
                  ),
                  label: 'Templates',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.propane,
                    size: controller.selectedIndex.value == 4 ? 31 : 30,
                  ),
                  label: 'Pro',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10, // Adjust this value for positioning
            child: GestureDetector(
              onTap: () => controller.changeIndex(2),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor, // Background color for the icon
                ),
                child: Icon(
                  Icons.add_circle,
                  color: primaryColor,
                  size: 50, // Larger size for the center icon
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
