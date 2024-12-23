import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/constants/customText.dart';
import 'package:ai_mad_project/constants/custom_button.dart';
import 'package:ai_mad_project/constants/custom_text_field.dart';
import 'package:ai_mad_project/controller/auth_controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/responsive.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());
  final Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: responsive.setHeight(32),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/jpg/login_top_border.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 55,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 18,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: responsive.setWidth(7),
                  vertical: responsive.setHeight(2),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    customText(
                      text: "Welcome Back",
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                    const SizedBox(height: 5),
                    customText(
                        text: "Login to your account",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor.withOpacity(0.5),
                    ),
                    const SizedBox(height: 28),
                    CustomTextField(
                      hintText: "Full Name",
                      hintTextColor: primaryColor,
                      backgroundColor: primaryColor.withOpacity(0.1),
                      prefix: const Icon(
                        Icons.person,
                        color: primaryColor,
                      ),
                      controller: controller.fullNameTextController,
                    ),
                    const SizedBox(height: 18),
                    Obx(
                      () => CustomTextField(
                        hintText: "Password",
                        hintTextColor: primaryColor,
                        backgroundColor: primaryColor.withOpacity(0.1),
                        prefix: const Icon(
                          Icons.lock_outline,
                          color: primaryColor,
                        ),
                        keyboaredtype: TextInputType.visiblePassword,
                        isObscureText: controller.isObscured.value,
                        onTap: controller.toggleObscureText,
                        suffixIcon: controller.isObscured.value
                            ? const Icon(
                                Icons.visibility_off,
                                color: primaryColor,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: primaryColor,
                              ),
                        controller: controller.passwordTextController,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            customText(
                              text: "Remember me",
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: blackColor.withOpacity(0.4),
                            ),
                          ],
                        ),
                        customText(
                          text: "Forget Password ?",
                          fontSize: 13,
                          color: primaryColor,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsive.setWidth(7),
          vertical: responsive.setHeight(2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              text: "Login",
              fontSize: 18,
              height: responsive.setHeight(6),
              width: double.infinity,
              onTap: () => Get.toNamed("/bottomNavBar"),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                customText(
                  text: "Don't have account?",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: blackColor.withOpacity(0.5),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () => Get.toNamed('/SignUpScreen'),
                  child: customText(
                    text: "Signup",
                    fontSize: 16,
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
