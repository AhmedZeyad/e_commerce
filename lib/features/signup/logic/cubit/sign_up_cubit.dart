import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/helper/app_regex.dart';
import 'package:e_commerce/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  final formKey = GlobalKey<FormState>();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  String? passwordValidator(String? value) {
   
    if (value == null || value.isEmpty) {
      return 'cannot be empty';
    }
   else {if (!AppRegex.passwordRegex(value))   return "Please enter a valid password";
    }
    emit(state);
    return null;
  }

  String? emailValidator(String? value) {
   
    if (value == null || value.isEmpty) {
      return 'cannot be empty';
    }
   else {if (!AppRegex.emailRegex(value))   return 'Please enter a valid email';
    }
    emit(state);
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password can not be empty!!';
    }
  
     else if (!AppRegex.hasMinLength(value, 8)) {
      return ' cant be less than 8';
    }

    return null;
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'User name can not be empty!!';
    } else if (!AppRegex.hasMinLength(value, 3)) {
      return 'the min length is 3';
    }

    return null;
  }
 void onCreateAccount() {
  bool isDone = formKey.currentState!.validate();
    if (isDone) {
      emit(SignUpSuccess());
    }
  }
}
