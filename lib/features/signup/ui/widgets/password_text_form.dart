import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/auth_text_form_fild.dart';
import '../../logic/cubit/sign_up_cubit.dart';
import '../../logic/cubit/sign_up_state.dart';
import 'password_validation.dart';
class PasswordTextFromFild extends StatefulWidget {
  const PasswordTextFromFild({
    super.key,
    required this.passwordController,
    required this.passwordConfirmController,
  });

  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;

  @override
  State<PasswordTextFromFild> createState() => _PasswordTextFromFildState();
}

class _PasswordTextFromFildState extends State<PasswordTextFromFild> {
  bool _isObscureText = true;
  bool _isObscureTextConfirm = true;
  bool? hasMinLength;
  bool? hasUppercase;
  bool? hasLowercase;
  bool? hasNumber;
  bool? hasSpecialCharacter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        SignUpCubit cubit = context.read<SignUpCubit>();
        return Column(
          children: [
            AuthTextFromFild(
              isObscureText: _isObscureText,
              onChanged: (password) {
                hasLowercase = AppRegex.hasLowerCase(password);
                hasUppercase = AppRegex.hasUpperCase(password);
                hasMinLength = AppRegex.hasMinLength(password, 8);
                hasNumber = AppRegex.hasNumber(password);
                hasSpecialCharacter = AppRegex.hasSpecialCharacter(password);
                setState(() {});
              },
              label: 'password',
              validator: cubit.passwordValidator,
              hint: 'Enter your password',
              controller: widget.passwordController,
              suffixIcon: IconButton(
                icon: _isObscureText
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
                    _isObscureText = !_isObscureText;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            passValidation(
              hasMinLength: hasMinLength,
              hasUppercase: hasUppercase,
              hasLowercase: hasLowercase,
              hasNumber: hasNumber,
              hasSpecialCharacter: hasSpecialCharacter,
            ),
            AuthTextFromFild(
              enabled: hasMinLength == true &&
                  hasUppercase == true &&
                  hasLowercase == true &&
                  hasNumber == true &&
                  hasSpecialCharacter == true,
              isObscureText: _isObscureTextConfirm,
              label: 'Confirm Password',
              validator: (s) {
                if (s != widget.passwordController.text) {
                  return "Password not match";
                }
                return null;
              },
              hint: 'Re-enter your password',
              controller: widget.passwordConfirmController,
              suffixIcon: IconButton(
                icon: _isObscureTextConfirm
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
                    _isObscureTextConfirm = !_isObscureTextConfirm;
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }
}