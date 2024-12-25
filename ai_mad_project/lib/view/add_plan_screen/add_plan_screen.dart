import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/constants/customText.dart';
import 'package:ai_mad_project/constants/custom_text_field.dart';
import 'package:ai_mad_project/controller/add_plan_controller/add_plan_controller.dart';
import 'package:ai_mad_project/utils/responsive.dart';
import 'package:ai_mad_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';

class AddPlanScreen extends StatelessWidget {
  AddPlanScreen({super.key});

  AddPlanController controller = Get.put(AddPlanController());
  Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: responsive.setHeight(15),
              padding: EdgeInsets.only(
                left: responsive.setWidth(4.5),
                right: responsive.setWidth(4.5),
                top: responsive.setHeight(8),
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.to(BottomNavBar()),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: whiteColor,
                    ),
                  ),
                  customText(
                    text: "Add Plan",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                  ),
                  const Icon(
                    Icons.add_alert_rounded,
                    size: 20,
                    color: whiteColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsive.setWidth(5.5),
                vertical: responsive.setHeight(1.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  customText(
                    text: "Pills Name",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          height: responsive.setHeight(9.1),
                          hintText: "Enter Name",
                          hintTextColor: primaryColor,
                          backgroundColor: primaryColor.withOpacity(0.05),
                          prefix: const Icon(
                            Icons.medication_liquid,
                            color: primaryColor,
                            size: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  customText(
                    text: "Type",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          height: responsive.setHeight(9.1),
                          hintText: "Pill, Serape etc",
                          hintTextColor: primaryColor,
                          backgroundColor: primaryColor.withOpacity(0.05),
                          prefix: const Icon(
                            Icons.medication_liquid,
                            color: primaryColor,
                            size: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  customText(
                    text: "Amount",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          height: responsive.setHeight(9.1),
                          hintText: "Enter Amount",
                          hintTextColor: primaryColor,
                          backgroundColor: primaryColor.withOpacity(0.05),
                          prefix: const Icon(
                            Icons.medication_liquid,
                            color: primaryColor,
                            size: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  customText(
                    text: "How Long",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          height: responsive.setHeight(9.1),
                          hintText: "15",
                          hintTextColor: primaryColor,
                          backgroundColor: primaryColor.withOpacity(0.05),
                          prefix: const Icon(
                            Icons.medication_liquid,
                            color: primaryColor,
                            size: 22,
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  customText(
                    text: "Food & Pills",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 12),
                  Obx(
                    () => Container(
                      height: responsive.setHeight(9.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => controller.selectedIndex.value = 0,
                            child: Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: controller.selectedIndex.value == 0
                                    ? primaryColor
                                    : greyColor,
                              ),
                              child:
                                  Image.asset("assets/png/pill_after_meal.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectedIndex.value = 1;
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: controller.selectedIndex.value == 1
                                    ? primaryColor
                                    : greyColor,
                              ),
                              child:
                                  Image.asset("assets/png/pill_after_meal.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
