import '../../data/onbording_repo.dart';
import '../../logic/cubit/onbording_cubit.dart';
import '../../logic/cubit/onbording_state.dart';
import 'onbording_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCardBuilder extends StatelessWidget {
  const OnboardingCardBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                return OnbordingCard(
                  onbordingModel: onbordingList[index],
                  onTapLeftIcon: context.read<OnboardingCubit>().prevPage,
                  onTapRightText: context.read<OnboardingCubit>().skip,
                );
              }),
        );
      },
    );
  }
}
