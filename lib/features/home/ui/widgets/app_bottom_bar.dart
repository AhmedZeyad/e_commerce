import 'package:e_commerce/features/home/ui/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

import '../../data/repo/bottom_bar_item_data.dart';

class AppBottomNav extends StatefulWidget {
  const AppBottomNav({
    super.key,
  });

  @override
  State<AppBottomNav> createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomBarItems.length,
            (index) => BottomBarItem(
              icon: bottomBarItems[index],
              isSelected: index == currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ));
  }
}

