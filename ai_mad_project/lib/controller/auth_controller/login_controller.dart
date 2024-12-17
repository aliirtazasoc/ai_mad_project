import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isObscured = true.obs;

  TextEditingController fullNameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  void toggleObscureText() {
    isObscured.value = !isObscured.value;
  }
}
