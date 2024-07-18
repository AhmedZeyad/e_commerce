import 'package:e_commerce/core/helper/size_helper.dart';
import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:flutter/material.dart';

fullButton(String text, VoidCallback onTap) {
  return GestureDetector(
    onTap: () {
      onTap();
      print(height * 0.065);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 16),
      alignment: Alignment.center,
      height: height * 0.075,
      width: width,
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Text(text, style: MyTextStyle.font16semiBoldWhite),
    ),
  );
}

 outlineButton(String text, VoidCallback onTap,{image=''}) {
  return GestureDetector(
    onTap: () {
      onTap();
      print(height * 0.075);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 16),
      alignment: Alignment.center,
      height: height * 0.075,
      width: width,
      decoration: BoxDecoration(
            border: Border.all(color: MyColors.greyD_50, width: 2),
            color: MyColors.backgroundColor,
            borderRadius: BorderRadius.circular(18)),
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: MyTextStyle.font16semiBoldWhite),
          const SizedBox(width: 8,),
          Visibility(visible: image!='',child: Image.asset(image))
        ],
      ),
    ),
  );

}
