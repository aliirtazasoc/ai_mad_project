import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPlanController extends GetxController{

  var selectedTime = TimeOfDay.now().obs;
  var selectedIndex = 0.obs;

  void updateTime(TimeOfDay newTime) {
    selectedTime.value = newTime;
  }
}