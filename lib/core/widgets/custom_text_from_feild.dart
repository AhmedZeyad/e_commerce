import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFromFeild extends StatelessWidget {
  String hint;
  TextEditingController controller;
  Color? fillColor;
  bool? isObscureText;
  bool? enabled;
  String Function(String?) validator;
  Widget? suffixIcon;

  CustomTextFromFeild(
      {required this.validator,
      required this.hint,
      required this.controller,
      this.fillColor,
      this.suffixIcon,
      this.enabled,
      this.isObscureText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled ?? true,
      obscureText: isObscureText ?? false,
      validator: validator,
      style: MyTextStyle.font16RegularWhite,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? MyColors.greyD_50,
        suffixIcon: suffixIcon,
                isDense: true,

        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        // *[disabledBorder]
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: MyColors.blac_50, width: 1),
        ),
        // *[errorBorder]
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: MyColors.red, width: 1),
        ),
        // *[enabledBorder]
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.greyD_50, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        // *[focusedBorder]
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.primaryColor, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        hintText: hint,
        hintStyle: MyTextStyle.font14RegularGreyD,
      ),
    );
  }
}
