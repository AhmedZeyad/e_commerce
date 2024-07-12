import 'package:e_commerce/features/onbording/logic/cubit/onbording_cubit.dart';
import 'package:e_commerce/features/onbording/ui/screen/onboreing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "PlusJakartaSans",
    ),
      home: BlocProvider(
    create: (context) => OnboardingCubit(),
    child: OnboreingScreen(),
  )));
}
