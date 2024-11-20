import '../widget/dot_indecater.dart';
import '../widget/navigation_button_bulder.dart';
import '../widget/onboarding_card_builder.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../data/onbording_repo.dart';
import '../../logic/cubit/onbording_cubit.dart';
import '../../logic/cubit/onbording_state.dart';
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
            const OnboardingCardBuilder(),
            //  the  boton of navigation onbording widgets show here
            NavigationButton(goToLgin: () {
              goToLgin(context);
            }),

            //  the dote of current onbording widgets show here
            DontIndecader(),
          ],
        ),
      ),
    );
  }
  void goToLgin(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.login);
  }
}
