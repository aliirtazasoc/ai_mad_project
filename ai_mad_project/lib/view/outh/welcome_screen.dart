import 'package:ai_mad_project/constants/custom_button.dart';
import 'package:ai_mad_project/view/constants/color_constants.dart';
import 'package:ai_mad_project/view/constants/constants_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/responsive.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: blackColor,
          image: DecorationImage(
              image: AssetImage("assets/jpg/welcome.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: responsive.setWidth(5.5),
            right: responsive.setWidth(5.5),
            top: responsive.setHeight(8),
          ),
          child: Column(
            children: [
              customText(
                text: "The best app for your health",
                fontSize: 70,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 250),
              CustomButton(
                text: "Sign In",
                fontSize: 17,
                height: responsive.setHeight(5),
                width: double.infinity,
                borderRadius: BorderRadius.circular(15),
                onTap: () => Get.toNamed("loginScreen"),
              ),
              SizedBox(
                height: 10,
              ),
              customText(text: "Create an account")
            ],
          ),
        ),
      ),
    );
  }
}
