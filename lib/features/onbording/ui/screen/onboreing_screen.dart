import 'package:e_commerce/features/onbording/data/onbording_repo.dart';
import 'package:e_commerce/features/onbording/logic/cubit/onbording_cubit.dart';
import 'package:e_commerce/features/onbording/logic/cubit/onbording_state.dart';
import 'package:e_commerce/features/onbording/ui/widget/dots_onbording.dart';
import 'package:e_commerce/features/onbording/ui/widget/onbording_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboreingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1B1B),
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
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible:
                  onbordingList[state.currentIndex].rightButtonTitle != null,
              child: Expanded(
                child: GestureDetector(
                  onTap:
                      context.read<OnboardingCubit>().goToLoginScreen(context),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    alignment: Alignment.center,
                    height: 60,
                    // width: 328,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 72, 71),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                      onbordingList[state.currentIndex].rightButtonTitle ?? "",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                    ),
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
                  margin: EdgeInsets.symmetric(
                      horizontal:
                          onbordingList[state.currentIndex].rightButtonTitle ==
                                  null
                              ? 8
                              : 4),
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xff21D4B4),
                      borderRadius: BorderRadius.circular(18)),
                  child: Text(
                    onbordingList[state.currentIndex].leftButtonTitle,
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDotsIndicator() {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
              color: Color(0xff282828),
              borderRadius: BorderRadius.circular(12)),
          width: 50,
          height: 20,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(onbordingList.length, (generator) {
                return DotsOnbording(
                  color: generator == state.currentIndex
                      ? Color(0xff21D4B4)
                      : Color(0xffC0C0C0),
                );
              })),
        );
      },
    );
  }
}
