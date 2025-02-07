import 'package:e_commerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/text_style.dart';
import '../../data/model/card.dart';

class MyCard extends StatelessWidget {
  final CardModel cardModel;

  const MyCard({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        rect.center;
        return const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [MyColors.greyD_150, MyColors.greyD_150],
        ).createShader(rect);
      },
      child: Container(
                       margin: const EdgeInsets.symmetric(horizontal: 8), // Space between cards

        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 380,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage(cardModel.image), fit: BoxFit.cover),
        ),
        child: Column(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 35,
              width: 80,
              child: Text(
                cardModel.badge,
                style: MyTextStyle.font14RegularBlack,
              ),
            ),
            Text(
              cardModel.subtitle,
              style: MyTextStyle.font16RegularBlack,
            ),
            Text(
              cardModel.title,
              style: MyTextStyle.font24BoldBlack,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
