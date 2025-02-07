import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../onbording/ui/widget/dots.dart';

class Dote extends StatelessWidget {
  final int currentCard;
  final int totalCards;

  const Dote({
    super.key,
    required this.currentCard,
    required this.totalCards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: MyColors.greyD_50, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          totalCards,
          (generator) {
            return DotsOnboarding(
              color: generator == currentCard
                  ? MyColors.primaryColor
                  : MyColors.grey_100,
            );
          },
        ),
      ),
    );
  }
}
