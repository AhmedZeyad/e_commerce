import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import 'package:flutter/material.dart';

  passValidation({
   required bool? hasMinLength,
   required bool? hasUppercase,
   required bool? hasLowercase,
    required bool? hasNumber,
   required bool? hasSpecialCharacter,
  }) {
    return Visibility(
      visible: hasLowercase == null &&
              hasUppercase == null &&
              hasNumber == null &&
              hasSpecialCharacter == null &&
              hasMinLength == null
          ? false
          : true,
      child: Column(
        children: [
          validationRow(
            hasLowercase,
            "1 Lower Case ",
          ),
          validationRow(hasUppercase, "1 Upper Case "),
          validationRow(hasNumber, "1 Number "),
          validationRow(hasSpecialCharacter, "1 Special Character "),
          validationRow(hasMinLength, "8 Min Length "),
        ],
      ),
    );
  }

  validationRow(bool? isDone, String text) {
    return Row(
      children: [
        Icon(isDone == true ? Icons.check : Icons.close,
            color: isDone == null
                ? MyColors.greyD_150
                : isDone
                    ? MyColors.primaryColor
                    : MyColors.red),
        Text(
          text,
          style: isDone == true
              ? MyTextStyle.font14RegularCyan
              : MyTextStyle.font14RegularRed,
        ),
      ],
    );
  }