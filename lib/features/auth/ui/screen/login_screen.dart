import 'package:e_commerce/core/helper/app_regex.dart';
import 'package:e_commerce/core/routing/routes.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:e_commerce/core/widgets/TextButton.dart';
import 'package:e_commerce/core/widgets/bottons.dart';
import 'package:e_commerce/core/widgets/custom_text_from_feild.dart';
import 'package:e_commerce/features/auth/logic/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/logic/cubit/auth_state.dart';
import 'package:e_commerce/features/auth/ui/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppHeader(),
              // CustomTextFromFeild(
              //     controller: context.read<AuthCubit>().username,
              //     hint: "Enter your username",
              //     validator: (value) {
              //       return '';
              //     }),

              _buildTextInput(),

              _buildPageButton(),
              const Spacer(),
              // ToDo: add privacy and policy and how to open web view in app
              // ToDo: howt to make  the text clickale
              _buildRichText(),
            ],
          ),
        ),
      ),
    );
  }

  _buildAppHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/quickmart.png",
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "Login",
          style: MyTextStyle.font32BoldWhite,
        ),
        Row(
          children: [
            const Text(
              "Don't have an account?",
              style: MyTextStyle.font16RegularGreyD,
            ),
            myTestButton(
                alignment: Alignment.centerRight,
                text: "Sign Up",
                syle: MyTextStyle.font16RegularCyan,
                onPressed: () {}),
          ],
        ),
      ],
    );
  }

  _buildTextInput() {
    return BuildUserNameAndPassword();
  }

  _buildPageButton() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          children: [
            myTestButton(
                alignment: Alignment.centerRight,
                text: "Forgot Password?",
                syle: MyTextStyle.font16MediumCyan,
                onPressed: () {}),
            fullButton(
              'Login',
              () async {
                
                await context.read<AuthCubit>().login();
              },
            ),
            outlineButton('Login with Google', () {},
                image: 'assets/images/google.png'),
          ],
        );
      },
    );
  }

  RichText _buildRichText() {
    return RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(children: [
          // By login , you agree to our
          TextSpan(
              text: 'By login , you agree to our ',
              style: MyTextStyle.font14SemiregularWhite),
          TextSpan(
            text: 'Privacy Policy',
            style: MyTextStyle.font14SemiBoldBlue,
            // recognizer: _tapGestureRecognizer,
          ),
          TextSpan(text: 'and', style: MyTextStyle.font14SemiregularWhite),
          TextSpan(
              text: 'Terms & Conditions',
              style: MyTextStyle.font14SemiBoldBlue),
        ]));
  }

// ToDo login btu
  _login() {}
// ToDo go to sinUp btu
  _signUp(context) {
    Navigator.pushNamed(context, Routes.signUp);
  }

// ToDo forget password btu
  _forgotPasswoed(context) {
    Navigator.pushNamed(context, Routes.forgotPasswoed);
  }
}

class BuildUserNameAndPassword extends StatelessWidget {
  const BuildUserNameAndPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        
        // TODO: implement listener
      },
      child: Column(
        children: [
          Form(
            key: context.read<AuthCubit>().formKey,
            child: Column(
              children: [
                EmailAndPasswoed(
                  label: "User Name",
                  hint: "Enter your User Name",
                  controller: context.read<AuthCubit>().username,
                  validator: (username) {
                    return 'valedate email';
                  },
                ),
                EmailAndPasswoed(
                  label: "Password",
                  hint: "Enter your password",
                  controller: context.read<AuthCubit>().password,
                  validator: (password) {
                    return 'ture';
                  },
                ),
               
              ],
            ),
          ),
         Visibility(
                  visible:context.read<AuthCubit>().state==PasswoedNotValedate()   ,
                  child: Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  ),
                ),],
      ),
    );
  }
}
