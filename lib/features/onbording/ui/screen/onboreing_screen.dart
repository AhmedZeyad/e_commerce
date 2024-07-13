import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:e_commerce/features/onbording/data/onbording_repo.dart';
import 'package:e_commerce/features/onbording/logic/cubit/onbording_cubit.dart';
import 'package:e_commerce/features/onbording/logic/cubit/onbording_state.dart';
import 'package:e_commerce/features/onbording/ui/widget/dots_onbording.dart';
import 'package:e_commerce/features/onbording/ui/widget/onbording_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboreingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // the onbording widgets show here
            _buildOnbordingWidget(),
            //  the  boton of navigation onbording widgets show here
            _buildNavigationButton(),
            //  the dote of current onbording widgets show here
            _buildDotsIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildOnbordingWidget() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Expanded(
          child: PageView.builder(
              controller: state.controler,
              onPageChanged: (value) {
                context.read<OnboardingCubit>().onPageChanged(value);
              },
              itemCount: onbordingList.length,
              itemBuilder: (context, index) {
                return OnbordingWidget(
                  onbordingModel: onbordingList[index],
                  onTapLeftIcon: context.read<OnboardingCubit>().prevPage,
                  onTapRightText: context.read<OnboardingCubit>().skip,
                );
              }),
        );
      },
    );
  }

  Widget _buildNavigationButton() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
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
                    onTap: context
                        .read<OnboardingCubit>()
                        .goToLoginScreen(context),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.center,
                      height: 60,
                      // width: 328,
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

  Widget _buildDotsIndicator() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
              color: MyColors.blac_50, borderRadius: BorderRadius.circular(12)),
          width: 50,
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onbordingList.length,
              (generator) {
                return DotsOnbording(
                  color: generator == state.currentIndex
                      ? MyColors.primaryColor
                      : MyColors.grey_100,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
