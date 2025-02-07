import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

surfaceTintColor: MyColors.backgroundColor,
      leadingWidth: 90,
      leading: Image.asset(
        "assets/images/quickmart.png",
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          icon: const Icon(
            Icons.search,
          ),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        Container(
          // margin: const EdgeInsets.symmetric(horizontal: 8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/azlogo.png")),
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
        )
      ],
      pinned: true,
      backgroundColor: MyColors.backgroundColor,
    );
  }
}
