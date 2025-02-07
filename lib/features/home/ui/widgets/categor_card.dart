import 'package:e_commerce/features/home/data/model/category.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63
      ,width: 85,
        decoration: BoxDecoration(border: Border.all(color: MyColors.greyD_50,width: 1),
      // color: MyColors.white,
      borderRadius: BorderRadius.circular(12),
      shape: BoxShape.rectangle
    ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.image,width: 60,height: 30,),
            Text(category.name,style: MyTextStyle.font14RegularWhite,)
          ],
        ));
  }
}
