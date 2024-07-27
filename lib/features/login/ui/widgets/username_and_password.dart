import '../../../../core/theme/colors.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';
import 'text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildUserNameAndPassword extends StatefulWidget {
  bool isObscureText = true;
  BuildUserNameAndPassword({
    super.key,
  });

  @override
  State<BuildUserNameAndPassword> createState() =>
      _BuildUserNameAndPasswordState();
}

class _BuildUserNameAndPasswordState extends State<BuildUserNameAndPassword> {
  // bool? hasMinLength;
  // bool? hasUppercase;
  // bool? hasLowercase;
  // bool? hasNumber;
  // bool? hasSpecialCharacter;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      LoginCubit cubit = context.read<LoginCubit>();
      return Column(
        children: [
          Form(
            key: cubit.formKey,
            child: Column(
              children: [
                UserNameAndPasswoed(
                  label: "User Name",
                  hint: "Enter your User Name",
                  controller: cubit.usernameController,
                  validator: cubit.validateUsername,
                ),
                UserNameAndPasswoed(
                  onChanged: (password) {
                    // hasLowercase = AppRegex.hasLowerCase(password);
                    // hasUppercase = AppRegex.hasUpperCase(password);
                    // hasMinLength = AppRegex.hasMinLength(password, 8);
                    // hasNumber = AppRegex.hasNumber(password);
                    // hasSpecialCharacter =
                    //     AppRegex.hasSpecialCharacter(password);
                    // setState(() {});
                  },
                  suffixIcon: IconButton(
                    icon: widget.isObscureText
                        ? const Icon(
                            Icons.visibility_off,
                            color: MyColors.greyD_150,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: MyColors.white,
                          ),
                    onPressed: () {
                      setState(() {
                        widget.isObscureText = !widget.isObscureText;
                      });
                    },
                  ),
                  isObscureText: widget.isObscureText,
                  label: "Password",
                  hint: "Enter your password",
                  controller: cubit.passwordController,
                  validator: cubit.validatePassword,
                ),
                //  const SizedBox(height: 12,),
                // passValidation(
                //   hasMinLength: hasMinLength,
                //   hasUppercase: hasUppercase,
                //   hasLowercase: hasLowercase,
                //   hasNumber: hasNumber,
                //   hasSpecialCharacter: hasSpecialCharacter,
                // )
              ],
            ),
          ),
        ],
      );
    });
  }
}
