import 'package:flutter/material.dart';

import '../../../../core/theme/text_style.dart';
class SectionHeader extends StatelessWidget {
  final String title;
  final String buttonText;
  const SectionHeader({
    super.key,
    required this.title,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Text(title, style: MyTextStyle.font22MediumWhite),
          GestureDetector(
            onTap: () {},
            child: Text(
              buttonText,
              style: MyTextStyle.font16MediumCyan,
            ),
          )
        ],
      ),
    );
  }
}
