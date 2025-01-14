
import 'package:e_commerce/features/signup/ui/screens/signup_screen.dart';

import '../../features/home/ui/screens/frame_screen.dart';
import '../../features/signup/logic/cubit/sign_up_cubit.dart';
import '../di/dependancy_injection.dart';
import 'routes.dart';
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
            child: const OnboardingScreen(),
          ),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            );
          },
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const FrameScreen(),
        );
      // default:
      //   return MaterialPageRoute(
      //     builder: (_) => ErrorScreen(),
      //   );
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          );
        });
    }
    return null;
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

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
