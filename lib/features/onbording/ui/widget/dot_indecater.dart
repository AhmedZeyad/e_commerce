import '../../../../core/theme/colors.dart';
import '../../data/onbording_repo.dart';
import '../../logic/cubit/onbording_cubit.dart';
import '../../logic/cubit/onbording_state.dart';
import 'dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DontIndecader extends StatelessWidget {
  const DontIndecader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

