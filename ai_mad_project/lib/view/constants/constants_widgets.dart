import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

Widget customText({
  String? text,
  String? fontFamily,
  TextStyle? style,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  TextDecoration? txtDecoration,
  TextOverflow? overFlow,
  TextAlign? textAlign,
  Color? decorationColor,
  double? letterSpacing,
  TextDirection? textDirection,
  int? maxLines,
}) {
  return Text(
    text ?? '',
    textAlign: textAlign,
    textDirection: textDirection,
    maxLines: maxLines,
    overflow: overFlow,
    softWrap: true,
    style: TextStyle(
      fontFamily: fontFamily, // Ensure it is applied here
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight, // Ensure the weight is respected
      fontStyle: fontStyle,
      decoration: txtDecoration,
      decorationColor: decorationColor,
      decorationThickness: 1.0,
      letterSpacing: letterSpacing,
    ),
  );
}

// Widget customText({
//   String? text, // Keep text nullable to avoid errors in existing code
//   String? fontFamily = 'Inter', // Default to Inter font if not specified
//   TextStyle? style,
//   Color? color,
//   double? fontSize,
//   FontWeight? fontWeight,
//   FontStyle? fontStyle,
//   TextDecoration? txtDecoration,
//   TextOverflow? overFlow,
//   TextAlign? textAlign,
//   Color? decorationColor,
//   double? letterSpacing,
//   TextDirection? textDirection,
//   int? maxLines,
// }) {
//   return Text(
//     text ?? '',
//     textAlign: textAlign,
//     textDirection: textDirection,
//     maxLines: maxLines,
//     overflow: overFlow,
//     style: TextStyle(
//       fontFamily: 'Inter', // Hardcoded Inter font
//       color: color,
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//       fontStyle: fontStyle,
//       decoration: txtDecoration,
//       decorationColor: decorationColor,
//       decorationThickness: 1.0,
//       letterSpacing: letterSpacing,
//     ),
//   );
// }
//
