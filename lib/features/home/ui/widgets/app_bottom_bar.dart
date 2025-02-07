import 'package:e_commerce/features/home/ui/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

import '../../data/repo/bottom_bar_item_data.dart';

class AppBottomNav extends StatelessWidget {
  final Function(int index) onTap;
  final int pageIndex;
  const AppBottomNav({
    required this.pageIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomBarItems.length,
            (index) => BottomBarItem(
              icon: bottomBarItems[index],
              isSelected: index == pageIndex,
              onTap: () {
                // setState(() {
                // pageIndex = index;
                // print(index);
                onTap(index);
                // });
              },
            ),
          ),
        ));
  }
}
