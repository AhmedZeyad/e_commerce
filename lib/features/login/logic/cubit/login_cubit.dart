import 'package:bloc/bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../data/model/login_model.dart';
import '../../data/repo/login_rebo.dart';
import 'login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final formKey = GlobalKey<FormState>();
  LoginRebo authRebo;

  LoginCubit({
    required this.authRebo,
  }) : super(LoginInitial());

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() async {
    emit(LoginLoading());
    try {
      final LoginModel res = await authRebo.login(
          usernameController.text, passwordController.text);
      await saveToken(res.token);
      await saveToken(res.refresh_token);
      emit(LoginSuccess(res.token!));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'User name can not be empty!!';
    } else if (!AppRegex.hasMinLength(value, 3)) {
      return 'the min length is 3';
    }

    return null;
  }

  saveToken(token) async {
    await SharedPrefHelper.setSecuredString('token', token);
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password can not be empty!!';
    }
    // if (!AppRegex.hasLowerCase(value)) {
    //   return '';
    // } else if (!AppRegex.hasUpperCase(value)) {
    //   return '';
    // } else if (!AppRegex.hasNumber(value)) {
    //   return '';
    // } else if (!AppRegex.hasSpecialCharacter(value)) {
    //   return '';
    // }
    if (!AppRegex.hasMinLength(value, 8)) {
      return ' cant be less than 8';
    }

    return null;
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
