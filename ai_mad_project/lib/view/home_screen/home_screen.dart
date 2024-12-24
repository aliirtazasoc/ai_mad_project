import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/constants/customText.dart';
import 'package:ai_mad_project/controller/home_controller/home_controller.dart';
import 'package:ai_mad_project/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loading_indicator/loading_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Responsive responsive = Responsive();
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: responsive.setHeight(28),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: responsive.setWidth(4.5),
                    right: responsive.setWidth(4.5),
                    top: responsive.setHeight(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            foregroundImage: AssetImage(
                              "assets/jpg/profile_image1.jpg",
                            ),
                          ),
                          const SizedBox(width: 18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                text: "Hello, Ali Irtaza",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                              ),
                              const SizedBox(height: 2),
                              customText(
                                text: "Good Morning",
                                color: whiteColor.withOpacity(0.8),
                                fontSize: 15,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.item.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                right: responsive.setWidth(2),
                                left: responsive.setWidth(1),
                              ),
                              child: Obx(
                                () => GestureDetector(
                                  onTap: () =>
                                      controller.selectedIndex.value = index,
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: controller.selectedIndex.value ==
                                              index
                                          ? Colors.white
                                          : primaryColor,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? primaryColor
                                            : whiteColor,
                                      ),
                                    ),
                                    child: Center(
                                      child: customText(
                                        text: "${controller.item[index]}",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? primaryColor
                                            : whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: responsive.setWidth(5.5),
                  right: responsive.setWidth(5.5),
                  top: responsive.setHeight(2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(
                      text: "Mon",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Tue",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Wed",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Thur",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Fri",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Sat",
                      color: blackColor.withOpacity(0.5),
                    ),
                    customText(
                      text: "Sun",
                      color: blackColor.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.pillsTitle.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: pillsReminderCart(
                        title: "${controller.pillsTitle[index]}",
                        medicineType: "${controller.pillsTitle[index]}",
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget pillsReminderCart(
      {required String title, required String medicineType}) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                customText(
                  text: "Medicine",
                  color: blackColor.withOpacity(0.4),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                customText(
                  text: title,
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                customText(
                  text: "(150 mg)",
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
            Column(
              children: [
                customText(
                  text: "Type",
                  color: blackColor.withOpacity(0.4),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                customText(
                  text: medicineType,
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
