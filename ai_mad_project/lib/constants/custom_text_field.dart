import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'color_constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.width,
    this.fontsize,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.minLines,
    this.hintText,
    this.hintTextColor,
    this.backgroundColor,
    this.keyboaredtype,
    this.prefix,
    this.prefixConstraints,
    this.suffixIcon,
    this.suffixConstraints,
    this.validator,
    this.readOnly,
    this.labelText,
    this.maxLength,
    this.autofocus = false,
    this.inputFormatter,
    this.onChanged,
    this.onTap,
    this.textAlign,
    this.textAlignVertical,
    this.height,
    this.borderRadius,
    this.borderSide,
  });

  final double? width;
  final double? fontsize;
  final double? height;
  final bool? readOnly;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? isObscureText;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final String? hintText;
  final Color? hintTextColor;
  final Color? backgroundColor;
  final String? labelText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffixIcon;
  final BoxConstraints? suffixConstraints;
  dynamic validator;
  final TextInputType? keyboaredtype;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatter;
  void Function(String)? onChanged;
  final TextAlign? textAlign;
  final VoidCallback? onTap;
  final TextAlignVertical? textAlignVertical;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: TextFormField(
        enableSuggestions: true,
        smartDashesType: SmartDashesType.enabled,
        autocorrect: true,
        autofocus: autofocus,
        style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
          fontSize: fontsize ?? 15,
          fontFamily: GoogleFonts.poppins().fontFamily, // Use Google Font here
        ),
        keyboardType: keyboaredtype ?? TextInputType.emailAddress,
        controller: controller,
        focusNode: focusNode,
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        minLines: minLines ?? 1,
        readOnly: readOnly ?? false,
        decoration: _buildDecoration(),
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: maxLength,
        onTap: onTap,
        inputFormatters: inputFormatter,
        onChanged: onChanged ?? (v) {},
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
      ),
    );
  }

  InputDecoration _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      labelText: labelText,
      hintStyle: TextStyle(
        color: hintTextColor ?? blackColor.withOpacity(0.4),
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: GoogleFonts.poppins().fontFamily, // Use Google Font for hint
      ),
      labelStyle: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: GoogleFonts.poppins().fontFamily, // Use Google Font for label
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: (height ?? 55) / 4,
        horizontal: 20,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        borderSide: borderSide ?? const BorderSide(color: borderColor, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        borderSide: borderSide ?? const BorderSide(color: primaryColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        borderSide: borderSide ?? const BorderSide(color: Colors.red),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        borderSide: borderSide ?? const BorderSide(color: Colors.red),
      ),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffixIcon,
      suffixIconConstraints: suffixConstraints,
      fillColor: backgroundColor ?? Colors.white,
      filled: true,
      isDense: true,
    );
  }
}
