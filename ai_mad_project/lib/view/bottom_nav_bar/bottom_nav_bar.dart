import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final BottomNavBarController controller = Get.put(BottomNavBarController());

  final List<Widget> pages = [
    const Center(child: Text('Home Page')),
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
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => BottomNavigationBar(
              // showUnselectedLabels: true,
              backgroundColor: whiteColor,
              currentIndex: controller.selectedIndex.value,
              onTap: controller.changeIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primaryColor,
              unselectedItemColor: greyColor,
              elevation: 0,
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
                const BottomNavigationBarItem(
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
            bottom: 11, // Adjust this value for positioning
            child: GestureDetector(
              onTap: () => controller.changeIndex(2),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor, // Background color for the icon
                ),
                child: const Icon(
                  Icons.add_circle,
                  color: primaryColor,
                  size: 51, // Larger size for the center icon
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
