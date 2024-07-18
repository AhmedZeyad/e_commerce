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
  static const TextStyle font16RegularGreyD = TextStyle(
    color: MyColors.greyD_150,
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
  );
//?  caption
// update font for tes.  to 14

  static const TextStyle font14RegularGreyD = TextStyle(
    color: MyColors.greyD_150,
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font14RegularWhite = TextStyle(
    color: MyColors.white,
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font14SemiregularWhite = TextStyle(
    color: MyColors.white,
    fontSize: 14,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font14SemiBoldBlue = TextStyle(
    color: MyColors.blue,
    fontSize: 14,
    fontWeight: FontWeightHelper.semiBold,
  );
  static const TextStyle font14SemiBoldBlack = TextStyle(
    color: MyColors.backgroundColor,
    fontSize: 14,
    fontWeight: FontWeightHelper.semiBold,
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
