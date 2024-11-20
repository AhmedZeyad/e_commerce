import 'package:e_commerce/features/signup/ui/screen/signup_screen.dart';

import '../../features/signup/logic/cubit/sign_up_cubit.dart';
import '../di/dependancy_injection.dart';
import 'routes.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onbording/logic/cubit/onbording_cubit.dart';
import '../../features/onbording/ui/screen/onboreing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings setting) {
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
              create: (context) => getIt<LoginCubit>(),
              child: LoginScreen(),
            );
          },
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      // default:
      //   return MaterialPageRoute(
      //     builder: (_) => ErrorScreen(),
      //   );
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
            child: SignUpScreen(),
          );
        });
    }
    return null;
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('Error'),
      ),
    );
  }
}
