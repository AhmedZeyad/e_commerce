import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/text_style.dart';

class MyRichText extends StatelessWidget {
  MyRichText({
    super.key,
  });
  _privacyPolicy() {
    // Todo need to implement
    print("privacy policy");
  }

  _termsAndConditions() {
    // Todo need to implement
    print("terms and conditions");
  }

  late TapGestureRecognizer tapPrivacyPolicy = TapGestureRecognizer()
    ..onTap = _privacyPolicy;
  late TapGestureRecognizer tapTermsAndConditions = TapGestureRecognizer()
    ..onTap = _termsAndConditions;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
              text: 'By login , you agree to our ',
              style: MyTextStyle.font14SemiBoldWhite),
          TextSpan(
            text: 'Privacy Policy',
            style: MyTextStyle.font14SemiBoldBlue,
            recognizer: tapPrivacyPolicy,
          ),
          const TextSpan(
              text: ' and ', style: MyTextStyle.font14SemiBoldWhite),
          TextSpan(
              text: 'Terms & Conditions',
              style: MyTextStyle.font14SemiBoldBlue,
              recognizer: tapTermsAndConditions),
        ]));
  }
}
