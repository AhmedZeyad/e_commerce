import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:e_commerce/core/widgets/custom_text_from_feild.dart';
import 'package:flutter/material.dart';

class EmailAndPasswoed extends StatelessWidget {
  String label;
  String hint;
  TextEditingController controller;
  bool? isObscureText;
  String Function(String?) validator;
  EmailAndPasswoed({
    required this.validator,
    required this.label,
    required this.hint,
    required this.controller,
    this.isObscureText,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 4),
          child: Text(
            label,
            style: MyTextStyle.font14RegularWhite,
          ),
        ),
        CustomTextFromFeild(
            controller: controller,
            hint: hint,
            validator: validator,
            isObscureText: isObscureText),
      ],
    );
  }
}
