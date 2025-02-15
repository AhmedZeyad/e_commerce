import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../data/onbording_model.dart';
import 'package:flutter/material.dart';

class OnbordingCard extends StatelessWidget {
  final OnbordingModel onbordingModel;
  void Function()? onTapLeftIcon;
  void Function()? onTapRightText;

  OnbordingCard(
      {super.key, required this.onbordingModel, this.onTapLeftIcon, this.onTapRightText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // this bloc of code have

        // left icon , right text and image
        Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                  color: MyColors.black_50,
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  ListTile(
                    trailing: TextButton(
                      onPressed: onTapRightText,
                      child: Text(
                        onbordingModel.rightText != null
                            ? onbordingModel.rightText!
                            : "",
                        style: MyTextStyle.font16MediumCyan,
                      ),
                    ),
                    leading: onbordingModel.leftIcon != null
                        ? GestureDetector(
                            onTap: onTapLeftIcon,
                            child: Image.asset(onbordingModel.leftIcon!),
                          )
                        : null,
                  ),


                  Image.asset(onbordingModel.image),
                ],
              ),
            )),
        // this bloc of code have

        // left title ,description
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  onbordingModel.title,
                  style: MyTextStyle.font32BoldWhite,
                  textAlign: TextAlign.center,
                ),
                Text(
                  onbordingModel.description,
                  style: MyTextStyle.font16MediumGreyD,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
