import '../widget/dot_indecater.dart';
import '../widget/navigation_button_bulder.dart';
import '../widget/onboarding_card_builder.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // the onboarding widgets show here
            const OnboardingCardBuilder(),
            //  the  button of navigation onbording widgets show here
            NavigationButton(goToLogin: () {
              goToLogin(context);
            }),

            //  the dote of current onbording widgets show here
            const DontIndicter(),
          ],
        ),
      ),
    );
  }
  void goToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.login);
  }
}
