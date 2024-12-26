import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  // var selectedTime = TimeOfDay.now().obs;

  List item = ["This Week", "This Month", "This Year"];

  List pillsTitle = ["Panadol", "Rigix", "Panadol", "Rigix"];
  List pillsType = ["Tablet", "Tablet", "Tablet", "Tablet"];
  List pillsDose = ["1-0-1", "0-1-1", "0-0-1", "1-0-0"];
  List pillsDuration = ["4 Days", "5 Days", "1 Day", "10 Days"];


  //
  // void updateTime(TimeOfDay newTime) {
  //   selectedTime.value = newTime;
  // }

}
