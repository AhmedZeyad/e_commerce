import '../../../../core/theme/text_style.dart';
import '../../../../core/widgets/custom_text_from_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserNameAndPasswoed extends StatelessWidget {
  String label;
  String hint;
  Widget ?suffixIcon;
  TextEditingController controller;
  bool? isObscureText = false;
  String ?Function(String?) validator;
  void Function(String)? onChanged;
  UserNameAndPasswoed({
  
    required this.validator,
    required this.label,
    required this.hint,
    required this.controller,
     this.onChanged,
    this.isObscureText,
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4),
          child: Text(
            label,
            style: MyTextStyle.font14RegularWhite,
          ),
        ),
        CustomTextFromFeild(onChanged:onChanged ,
            suffixIcon: suffixIcon,
            controller: controller,
            hint: hint,
            validator: validator,
            
            isObscureText: isObscureText),
      ],
    );
  }
}
