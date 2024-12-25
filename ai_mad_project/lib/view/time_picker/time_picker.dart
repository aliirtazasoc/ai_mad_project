import 'package:ai_mad_project/controller/home_controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CupertinoTimePickerExample extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  CupertinoTimePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Time Picker'),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected Time: ${controller.selectedTime.value.format(context)}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _showTimePicker(context),
                child: const Text('Pick Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showTimePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 250,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (DateTime dateTime) {
                  TimeOfDay newTime =
                      TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
                  controller.updateTime(newTime);
                },
                initialDateTime: DateTime.now(),
              ),
            ),
            CupertinoButton(
              child: const Text('Done'),
              onPressed: () => Get.back(),
            )
          ],
        ),
      ),
    );
  }
}
