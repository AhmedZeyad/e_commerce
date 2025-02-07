import 'package:flutter/material.dart';

import '../../../../core/theme/text_style.dart';
import '../../data/model/bottom_bar_Item.dart';

class BottomBarItem extends StatelessWidget {
  final VoidCallback onTap;
  final BottomBarItemModel icon;
  final bool isSelected;
  const BottomBarItem({
    required this.onTap,
    required this.icon,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            isSelected ? icon.selected : icon.unSelected,
            width: 24,
            height: 24,
            fit: BoxFit.cover,
          ),
          Text(icon.title,
              style: isSelected
                  ? MyTextStyle.font14SemiBoldWhite
                  : MyTextStyle.font14RegularGreyD)
        ],
      ),
    );
  }
}
