import 'package:e_commerce/core/di/dependancy_injection.dart';
import 'package:e_commerce/core/routing/routes.dart';
import 'package:e_commerce/features/auth/logic/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/ui/screen/login_screen.dart';
import 'package:e_commerce/features/onbording/logic/cubit/onbording_cubit.dart';
import 'package:e_commerce/features/onbording/ui/screen/onboreing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  
  Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnboardingCubit(),
            child: OnboreingScreen(),
          ),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) {

            return BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: LoginScreen(),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) => ErrorScreen(),
        );
    }
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}
