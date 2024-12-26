import 'package:ai_mad_project/constants/color_constants.dart';
import 'package:ai_mad_project/constants/customText.dart';
import 'package:ai_mad_project/constants/custom_button.dart';
import 'package:ai_mad_project/constants/custom_text_field.dart';
import 'package:ai_mad_project/controller/add_plan_controller/add_plan_controller.dart';
import 'package:ai_mad_project/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:table_calendar/table_calendar.dart';

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
      body: Column(
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
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
                            backgroundColor: primaryColor.withOpacity(0.04),
                            borderSide:
                                BorderSide(color: primaryColor.withOpacity(0.3)),
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
                            backgroundColor: primaryColor.withOpacity(0.04),
                            borderSide:
                                BorderSide(color: primaryColor.withOpacity(0.3)),
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
                            hintText: "1, 2, 3 etc",
                            hintTextColor: primaryColor,
                            backgroundColor: primaryColor.withOpacity(0.04),
                            borderSide:
                                BorderSide(color: primaryColor.withOpacity(0.3)),
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
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: 400,
                            child: CustomCalendar(),
                          ),
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        height: responsive.setHeight(7.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor, width: 0.3),
                          color: primaryColor.withOpacity(0.04),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor,
                              ),
                              child: const Icon(
                                Icons.notifications_active_outlined,
                                size: 18,
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            customText(
                              text:
                                  'Selected Time: ${controller.selectedTime.value.format(context)}',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor,
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 18,
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
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
                        height: responsive.setHeight(13.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => controller.selectedIndex.value = 0,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: controller.selectedIndex.value == 0
                                          ? primaryColor
                                          : greyColor,
                                    ),
                                    child: Image.asset(
                                      "assets/png/pill_before_meal.png",
                                      height: 50,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  customText(
                                    text: "Pills before food",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectedIndex.value = 1;
                              },
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: controller.selectedIndex.value == 1
                                          ? primaryColor
                                          : greyColor,
                                    ),
                                    child: Image.asset(
                                      "assets/png/pill_after_meal.png",
                                      height: 50,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  customText(
                                    text: "Pills after food",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    customText(
                      text: "Notification",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () => _showTimePicker(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        height: responsive.setHeight(7.1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor, width: 0.3),
                          color: primaryColor.withOpacity(0.04),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor,
                              ),
                              child: const Icon(
                                Icons.notifications_active_outlined,
                                size: 18,
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            customText(
                              text:
                                  'Selected Time: ${controller.selectedTime.value.format(context)}',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor,
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 18,
                                color: whiteColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: responsive.setHeight(3),
                      ),
                      child: CustomButton(
                        text: "Submit",
                        height: responsive.setHeight(6),
                        width: double.infinity,
                        borderColor: primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
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

class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  DateTime? rangeStart;
  DateTime? rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.2),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: TableCalendar(
        weekNumbersVisible: false,
        firstDay: DateTime.utc(2021, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: focusedDay,
        calendarFormat: calendarFormat,
        selectedDayPredicate: (day) {
          return isSameDay(selectedDay, day);
        },
        headerStyle: const HeaderStyle(
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          leftChevronIcon: Icon(
            Icons.arrow_back_ios,
          ),
          rightChevronIcon: Icon(
            Icons.arrow_forward_ios,
          ),
          formatButtonVisible: false,
          titleCentered: true,
        ),
        rangeStartDay: rangeStart,
        rangeEndDay: rangeEnd,
        onDaySelected: (selectedDay, focusedDay) {
          if (rangeStart == null || (rangeStart != null && rangeEnd != null)) {
            setState(() {
              rangeStart = selectedDay;
              rangeEnd = null;
              this.focusedDay = focusedDay;
            });
          } else if (rangeStart != null && rangeEnd == null) {
            if (selectedDay.isBefore(rangeStart!)) {
              setState(() {
                rangeStart = selectedDay;
              });
            } else {
              setState(() {
                rangeEnd = selectedDay;
              });
            }
          } else {
            setState(() {
              rangeStart = null;
              rangeEnd = null;
              this.focusedDay = focusedDay;
            });
          }
        },
        onRangeSelected: (start, end, focusedDay) {
          setState(() {
            rangeStart = start;
            rangeEnd = end;
            this.focusedDay = focusedDay;
          });
        },
        onFormatChanged: (format) {
          if (calendarFormat != format) {
            setState(() {
              calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          this.focusedDay = focusedDay;
        },
        calendarStyle: CalendarStyle(
          rangeHighlightColor: primaryColor.withOpacity(0.4),
          rangeHighlightScale: 1.2,
          todayDecoration: const BoxDecoration(
            color: whiteColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: whiteColor,
            shape: BoxShape.circle,
          ),
          rangeStartDecoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          rangeEndDecoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          withinRangeDecoration: const BoxDecoration(
            color: transparentColor, // This will highlight the range days
            shape: BoxShape.circle,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            if (day.isBefore(DateTime.now())) {
              return Center(
                child: Text(
                  '${day.day}',
                  style: const TextStyle(color: greyColor),
                ),
              );
            }
            return null;
          },
          markerBuilder: (context, day, events) {
            // Ensure that rangeStart and rangeEnd are not null before using them
            if (rangeStart != null && rangeEnd != null) {
              if (isSameDay(day, rangeStart) || isSameDay(day, rangeEnd)) {
                return Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${day.day}',
                      style: const TextStyle(
                        color: whiteColor,
                      ),
                    ),
                  ),
                );
              } else if (day.isAfter(rangeStart!) && day.isBefore(rangeEnd!)) {
                return Container(
                  decoration: const BoxDecoration(
                    color: transparentColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${day.day}',
                      style: const TextStyle(
                        color: blackColor,
                      ),
                    ),
                  ),
                );
              }
            }
            return null;
          },
        ),
      ),
    );
  }
}
