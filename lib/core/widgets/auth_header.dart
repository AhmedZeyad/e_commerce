import '../../../../core/theme/text_style.dart';
import '../../../../core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';


class AppHeader extends StatelessWidget {
  final String title;
  final String bode;
  final String buttonText;
  final void Function() onPressed;
  const AppHeader({
    required this.title,
    required this.bode,
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/quickmart.png",
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          title,
          style: MyTextStyle.font32BoldWhite,
        ),
        Row(
          children: [
            Text(
              bode,
              style: MyTextStyle.font16RegularGreyD,
            ),
            myTestButton(
                alignment: Alignment.centerRight,
                text: buttonText,
                style: MyTextStyle.font16RegularCyan,
                onPressed: onPressed),
          ],
        ),
      ],
    );
  }
}