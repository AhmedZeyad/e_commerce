import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/core/routing/routes.dart';
import 'package:flutter/material.dart';

class EcomerceApp extends StatelessWidget {
  final AppRouter appRouter ;
  EcomerceApp({required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: Routes.onboarding,
      onGenerateRoute:appRouter.onGenerateRoute ,
    );
  }
}
