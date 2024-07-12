import 'package:e_commerce/core/helper/font_helper.dart';
import 'package:e_commerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

//todo: add test style here --done

class MyTextStyle {
//? heading2
  static const TextStyle font32BoldWhite = TextStyle(
    color: MyColors.white,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle font32SemiBoldWhite = TextStyle(
    color: MyColors.white,
    fontSize: 32,
    fontWeight: FontWeightHelper.semiBold,
  );

//? BODY button

  static const TextStyle font16MediumWhite = TextStyle(
    color: MyColors.white,
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16MediumGreyD = TextStyle(
    color: MyColors.greyD_150,
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16MediumCyan = TextStyle(
    color: MyColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
  );
  static const TextStyle font16semiBoldWhite = TextStyle(
    color: MyColors.white,
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font16semiBoldCyan = TextStyle(
    color: MyColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font16RegularCyan = TextStyle(
    color: MyColors.primaryColor,
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font16RegularWhite = TextStyle(
    color: MyColors.white,
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
  );
//?  caption

  static const TextStyle font12RegularGreyD = TextStyle(
    color: MyColors.greyD_150,
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font12SemiBoldWhite = TextStyle(
    color: MyColors.white,
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font12SemiBoldBlack = TextStyle(
    color: MyColors.backgroundColor,
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );
//? overline
  static const TextStyle font10SemiBoldWhite = TextStyle(
    fontSize: 10,
    color: MyColors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font10SemiBoldGrey = TextStyle(
    fontSize: 10,
    color: MyColors.grey_100,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font10SemiBoldCyan = TextStyle(
    fontSize: 10,
    color: MyColors.primaryColor,
    fontWeight: FontWeightHelper.semiBold,
  );
}
