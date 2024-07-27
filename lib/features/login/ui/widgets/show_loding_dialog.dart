import '../../../../core/helper/size_helper.dart';
import '../../../../core/theme/colors.dart';
import 'package:flutter/material.dart';

showLoadingDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          decoration: BoxDecoration(
              color: MyColors.blac_50, borderRadius: BorderRadius.circular(12)),
          height: height * 0.3,
          width: width * 0.8,
          child: const Center(
            child: CircularProgressIndicator(
              color: MyColors.primaryColor,
            ),
          ),
        ),
      );
    },
  );
}
