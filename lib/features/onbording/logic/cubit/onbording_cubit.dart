import '../../data/onbording_repo.dart';
import 'onbording_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(0));
  // change page
  void onPageChanged(int index) {
    emit(OnboardingState(index));
  }

  // go to next page
  void nextPage() {
    state.controler.animateToPage(
      state.currentIndex < onbordingList.length - 1
          ? state.currentIndex + 1
          : state.currentIndex + 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // go to previous page

  void prevPage() {
    state.controler.animateToPage(
      state.currentIndex > 0 ? state.currentIndex - 1 : state.currentIndex - 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
  // skip button

  void skip() {
    state.controler.animateToPage(
      onbordingList.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }


}
