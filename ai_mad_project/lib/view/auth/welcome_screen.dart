import 'package:ai_mad_project/constants/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/color_constants.dart';
import '../../constants/customText.dart';
import '../../utils/responsive.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final Responsive responsive = Responsive();

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
            image: AssetImage("assets/jpg/welcome.jpg"),
            fit: BoxFit.cover,
          ),
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
                fontSize: responsive.setTextScale(60),
                fontWeight: FontWeight.w500,
              ),
               SizedBox(height: responsive.setHeight(50)),
              CustomButton(
                text: "Sign In",
                fontSize: 17,
                height: responsive.setHeight(6),
                width: double.infinity,
                borderRadius: BorderRadius.circular(15),
                onTap: () => Get.toNamed("loginScreen"),
              ),
              const SizedBox(height: 10),
              customText(text: "Create an account")
            ],
          ),
        ),
      ),
    );
  }
}
