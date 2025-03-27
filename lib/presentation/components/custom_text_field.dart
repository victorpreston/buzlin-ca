import 'package:demand/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscure;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String? Function(String?)? validation;
  final TextInputType? inputType;
  final String? initialText;
  final bool readOnly;
  final bool isError;
  final bool autoFocus;
  final double radius;
  final Color? fillColor;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.obscure,
    this.validation,
    this.onChanged,
    this.controller,
    this.inputType,
    this.initialText,
    this.readOnly = false,
    this.isError = false,
    this.hint = "",
    this.maxLines,
    this.radius = AppConstants.radius,
    this.autoFocus = false,
    this.fillColor,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (colors, c) {
      return TextFormField(
        autofocus: autoFocus,
        onTap: onTap,
        onChanged: onChanged,
        autocorrect: true,
        obscureText: !(obscure ?? true),
        obscuringCharacter: '*',
        controller: controller,
        validator: validation,
        maxLength: 200,
        maxLines: maxLines,
        style: CustomStyle.interNormal(
          size: 14.sp,
          color: colors.textBlack,
        ),
        cursorWidth: 1,
        cursorColor: colors.textBlack,
        keyboardType: inputType,
        initialValue: initialText,
        readOnly: readOnly,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          counterText: "",
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.r),
          hintText: hint,
          hintStyle: CustomStyle.interNormal(
            size: 14.sp,
            color: CustomStyle.textHint,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          fillColor: CustomStyle.black,
          filled: false,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
          border: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.merge(
                  const BorderSide(color: CustomStyle.icon),
                  const BorderSide(color: CustomStyle.icon)),
              borderRadius: BorderRadius.circular(radius.r)),
        ),
      );
    });
  }
}
