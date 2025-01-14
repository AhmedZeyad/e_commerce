import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/auth_header.dart';
import '../widgets/login_button.dart';
import '../widgets/rich_text.dart';
import '../widgets/username_and_password.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppHeader(
                    title: "Login",
                    bode: "Don't have an account?",
                    buttonText: "Sign Up",
                    onPressed: () {
                      _goToSignUp(context);
                    },
                  ),
                  BuildUserNameAndPassword(),
                  buildPageButton(
                    () {
                      _goToForgotPassword(context);
                    },
                  ),
                  const SizedBox(height: 16),
                  MyRichText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _goToSignUp(context) {
    Navigator.popAndPushNamed(context, Routes.signUp);
  }

  _goToForgotPassword(context) {
    Navigator.pushNamed(context, Routes.forgotPassword);
  }
}
