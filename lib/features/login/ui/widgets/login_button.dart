import '../../../../core/routing/routes.dart';
import '../../../../core/theme/text_style.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/bottons.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';
import 'show_loding_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

buildPageButton(void Function() onPressed) {
  return BlocConsumer<LoginCubit, LoginState>(
    listener: (context, state) {
      if (state is LoginLoading) {
        showLoadingDialog(context);
        
      } else {
        Navigator.of(context).pop();

        if (state is LoginSuccess) {
          Navigator.of(context).popAndPushNamed(Routes.home);
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      }
    },
    builder: (context, state) {
      return BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          LoginCubit cubit = context.read<LoginCubit>();
          return Column(
            children: [
              myTestButton(
                  alignment: Alignment.centerRight,
                  text: "Forgot Password?",
                  style: MyTextStyle.font16MediumCyan,
                  onPressed:onPressed
                  ),
              fullButton(
                'Login',
                () async {
                  // Done  add validation
                  if (cubit.validateUsername(cubit.usernameController.text) ==
                          null &&
                      cubit.validatePassword(cubit.passwordController.text) ==
                          null) {
                    cubit.login();
                  } else {
                    cubit.formKey.currentState!.validate();
                  }
                },
              ),
              outlineButton('Login with Google', () {},
                  image: 'assets/images/google.png'),
            ],
          );
        },
      );
    },
  );
}
