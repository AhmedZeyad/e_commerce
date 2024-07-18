import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/helper/shared_pref_helper.dart';
import 'package:e_commerce/features/auth/data/repo/auth_rebo.dart';
import 'package:e_commerce/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  final formKey = GlobalKey<FormState>();
  AuthRebo authRebo;

  AuthCubit({
    required this.authRebo,
  }) : super(AuthInitial());
  // done add user name and passwoed

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  // Todo haned the unvaled username and password
  // public ke
  // Doneq  login function
  login() async {
    String username = "mor_2314";
    String password = "83r5^_";
    // String? res = await authRebo.login(username.text, password.text);
    String? res = await authRebo.login(username, password);
    if (res != null) {}
    print('!=null');
    print(res);
  }

  // Todo save user token
  saveToken(token) async {
    await SharedPrefHelper.setSecuredString('token', token);
  }
}
// 'mor_2314', '83r5^_'
