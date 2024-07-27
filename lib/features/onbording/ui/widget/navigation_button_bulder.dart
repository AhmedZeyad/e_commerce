import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../data/onbording_repo.dart';
import '../../logic/cubit/onbording_cubit.dart';
import '../../logic/cubit/onbording_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NavigationButton extends StatelessWidget {
  void Function()? goToLgin;
   NavigationButton({
    required this.goToLgin
    ,super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible:
                    onbordingList[state.currentIndex].rightButtonTitle != null,
                child: Expanded(
                  child: GestureDetector(
                    onTap: 
                          goToLgin

                      
,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.center,
                      height: 60,

                      decoration: BoxDecoration(
                          border:
                              Border.all(color: MyColors.greyD_50, width: 2),
                          color: MyColors.backgroundColor,
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                          onbordingList[state.currentIndex].rightButtonTitle ??
                              "",
                          style: MyTextStyle.font16semiBoldWhite),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<OnboardingCubit>().nextPage();
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                        onbordingList[state.currentIndex].leftButtonTitle,
                        style: MyTextStyle.font16semiBoldWhite),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}