import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_constants.dart';
import '../../constants/customText.dart';
import '../../constants/custom_button.dart';
import '../../constants/custom_text_field.dart';
import '../../controller/auth_controller/signup_controller.dart';
import '../../utils/responsive.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  SignUpController controller = Get.put(SignUpController());
  Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    responsive.setContext(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: responsive.setWidth(7),
            vertical: responsive.setHeight(2),
          ),
          child: Stack(children: [
            Positioned(
              top: 40,
              child: InkWell(
                onTap: () => Get.back(),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 18,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  customText(
                    text: "Register",
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                  const SizedBox(height: 5),
                  customText(
                    text: "Create your new account",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: blackColor.withOpacity(0.5),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    hintText: "Full Name",
                    hintTextColor: primaryColor,
                    backgroundColor: primaryColor.withOpacity(0.1),
                    prefix: const Icon(
                      Icons.person,
                      color: primaryColor,
                    ),
                    controller: controller.fullNameController,
                  ),
                  const SizedBox(height: 18),
                  CustomTextField(
                    hintText: "Email",
                    hintTextColor: primaryColor,
                    backgroundColor: primaryColor.withOpacity(0.1),
                    prefix: const Icon(
                      Icons.mail,
                      color: primaryColor,
                    ),
                    controller: controller.emailController,
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
                      controller: controller.passwordController,
                    ),
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    text: "Signup",
                    fontSize: 17,
                    height: responsive.setHeight(6),
                    width: double.infinity,
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
                            color: blackColor.withOpacity(0.5),
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
                  SizedBox(height: responsive.setHeight(7)),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                          color: primaryColor,
                        ),
                      ),
                      customText(
                        text: " or with continue with ",
                        fontSize: 16,
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.setHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), // Cha
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/png/apple_logo.png",
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: greyColor.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // Cha
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          "assets/png/logo_google_icon.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: greyColor.withOpacity(0.5),
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5,
                              offset: const Offset(0, 3), // Cha
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.facebook,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                customText(
                  text: "Already have an account?",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: blackColor.withOpacity(0.5),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () => Get.toNamed("loginScreen"),
                  child: customText(
                    text: "Login",
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
