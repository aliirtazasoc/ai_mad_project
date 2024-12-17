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

  LoginController controller = Get.put(LoginController());
  Responsive responsive = Responsive();

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
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20),
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
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                    const SizedBox(height: 5),
                    customText(
                        text: "Login to your account",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: blackColor.withOpacity(0.4)),
                    const SizedBox(height: 30),
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
                                Icons.remove_red_eye,
                                color: primaryColor,
                              )
                            : const Icon(
                                Icons.remove_red_eye_outlined,
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
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: blackColor.withOpacity(0.4),
                            ),
                          ],
                        ),
                        customText(
                          text: "Forget Password ?",
                          fontSize: 12,
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
              fontSize: 17,
              height: responsive.setHeight(5),
              width: double.infinity,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                customText(
                  text: "Don't have account?",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: blackColor.withOpacity(0.4),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () => Get.toNamed('/SignUpScreen'),
                  child: customText(
                    text: "Signup",
                    fontSize: 15,
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
