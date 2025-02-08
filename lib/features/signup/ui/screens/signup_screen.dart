import 'package:e_commerce/core/routing/routes.dart';
import 'package:e_commerce/core/widgets/bottons.dart';
import 'package:e_commerce/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:e_commerce/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/auth_header.dart';
import '../../../../core/widgets/auth_text_form_fild.dart';
import '../../../login/ui/widgets/show_loding_dialog.dart';
import '../widgets/password_text_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
         if (state is SignUpLoading) {
        showLoadingDialog(context);
        
      } else {
        Navigator.of(context).pop();

        if (state is SignUpSuccess) {
          Navigator.of(context).popAndPushNamed(Routes.home);
        } else if (state is SignUpError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      }
      },
      builder: (context, state) {
        SignUpCubit cubit = context.read<SignUpCubit>();
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      AppHeader(
                        title: "Sign Up",
                        bode: "Already have an account?",
                        buttonText: "Login",
                        onPressed: () {
                          _goToLogin(context);
                        },
                      ),
                      AuthTextFromFild(
                          label: 'Full Name',
                          validator: cubit.validateUsername,
                          hint: 'Enter your full name',
                          controller: cubit.fullNameController),


                      AuthTextFromFild(
        label: 'Email',
        validator: cubit.emailValidator,
        hint: 'Enter your email',
        controller: cubit.emailController),
  
                      //  password

                      PasswordTextFromFild(
                        passwordController:cubit. passwordController,
                        passwordConfirmController:cubit. passwordConfirmController,
                        // isObscureText: true,
                        // isObscureTextConfirm:true,
                      ),

                      const SizedBox(
                        height: 8,
                      ),
            fullButton('Create Account', 
                      cubit.onCreateAccount,
),                      outlineButton('sing up with Google', () {},
                          image: 'assets/images/google.png'),
                    ],
                  ),
                ),
              ),
            )),
          ),
        );
      },
    );
  }

  _goToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.login);
  }
}
