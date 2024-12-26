// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
//
// import '../../constants/color_constants.dart';
//
// class CustomCalendar extends StatefulWidget {
//   @override
//   _CustomCalendarState createState() => _CustomCalendarState();
// }
//
// class _CustomCalendarState extends State<CustomCalendar> {
//   CalendarFormat calendarFormat = CalendarFormat.month;
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();
//   DateTime? rangeStart;
//   DateTime? rangeEnd;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: blackColor.withOpacity(0.2),
//             blurRadius: 1.0,
//           ),
//         ],
//       ),
//       child: TableCalendar(
//         weekNumbersVisible: false,
//         firstDay: DateTime.utc(2021, 1, 1),
//         lastDay: DateTime.utc(2030, 12, 31),
//         focusedDay: focusedDay,
//         calendarFormat: calendarFormat,
//         selectedDayPredicate: (day) {
//           return isSameDay(selectedDay, day);
//         },
//         headerStyle: const HeaderStyle(
//           titleTextStyle: TextStyle(
//             fontSize: 20.0,
//             color: blackColor,
//             fontWeight: FontWeight.bold,
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15),
//               topRight: Radius.circular(15),
//             ),
//           ),
//           leftChevronIcon: Icon(
//             Icons.arrow_back_ios,
//           ),
//           rightChevronIcon: Icon(
//             Icons.arrow_forward_ios,
//           ),
//           formatButtonVisible: false,
//           titleCentered: true,
//         ),
//         rangeStartDay: rangeStart,
//         rangeEndDay: rangeEnd,
//         onDaySelected: (selectedDay, focusedDay) {
//           if (rangeStart == null || (rangeStart != null && rangeEnd != null)) {
//             setState(() {
//               rangeStart = selectedDay;
//               rangeEnd = null;
//               this.focusedDay = focusedDay;
//             });
//           } else if (rangeStart != null && rangeEnd == null) {
//             if (selectedDay.isBefore(rangeStart!)) {
//               setState(() {
//                 rangeStart = selectedDay;
//               });
//             } else {
//               setState(() {
//                 rangeEnd = selectedDay;
//               });
//             }
//           } else {
//             setState(() {
//               rangeStart = null;
//               rangeEnd = null;
//               this.focusedDay = focusedDay;
//             });
//           }
//         },
//         onRangeSelected: (start, end, focusedDay) {
//           setState(() {
//             rangeStart = start;
//             rangeEnd = end;
//             this.focusedDay = focusedDay;
//           });
//         },
//         onFormatChanged: (format) {
//           if (calendarFormat != format) {
//             setState(() {
//               calendarFormat = format;
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           this.focusedDay = focusedDay;
//         },
//         calendarStyle: CalendarStyle(
//           rangeHighlightColor: primaryColor.withOpacity(0.4),
//           rangeHighlightScale: 1.2,
//           todayDecoration: const BoxDecoration(
//             color: whiteColor,
//             shape: BoxShape.circle,
//           ),
//           selectedDecoration: const BoxDecoration(
//             color: whiteColor,
//             shape: BoxShape.circle,
//           ),
//           rangeStartDecoration: const BoxDecoration(
//             color: primaryColor,
//             shape: BoxShape.circle,
//           ),
//           rangeEndDecoration: const BoxDecoration(
//             color: primaryColor,
//             shape: BoxShape.circle,
//           ),
//           withinRangeDecoration: const BoxDecoration(
//             color: transparentColor, // This will highlight the range days
//             shape: BoxShape.circle,
//           ),
//         ),
//         calendarBuilders: CalendarBuilders(
//           defaultBuilder: (context, day, focusedDay) {
//             if (day.isBefore(DateTime.now())) {
//               return Center(
//                 child: Text(
//                   '${day.day}',
//                   style: const TextStyle(color: greyColor),
//                 ),
//               );
//             }
//             return null;
//           },
//           markerBuilder: (context, day, events) {
//             // Ensure that rangeStart and rangeEnd are not null before using them
//             if (rangeStart != null && rangeEnd != null) {
//               if (isSameDay(day, rangeStart) || isSameDay(day, rangeEnd)) {
//                 return Container(
//                   decoration: const BoxDecoration(
//                     color: primaryColor,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Center(
//                     child: Text(
//                       '${day.day}',
//                       style: const TextStyle(
//                         color: whiteColor,
//                       ),
//                     ),
//                   ),
//                 );
//               } else if (day.isAfter(rangeStart!) && day.isBefore(rangeEnd!)) {
//                 return Container(
//                   decoration: const BoxDecoration(
//                     color: transparentColor,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Center(
//                     child: Text(
//                       '${day.day}',
//                       style: const TextStyle(
//                         color: blackColor,
//                       ),
//                     ),
//                   ),
//                 );
//               }
//             }
//             return null;
//           },
//         ),
//       ),
//     );
//   }
// }
