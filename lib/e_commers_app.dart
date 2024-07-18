import 'package:e_commerce/core/helper/size_helper.dart';
import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/core/routing/routes.dart';
import 'package:e_commerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

class EcomerceApp extends StatelessWidget {
  final AppRouter appRouter;
  EcomerceApp({required this.appRouter});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: MyColors.backgroundColor),
      initialRoute: Routes.login,
      // initialRoute: Routes.onboarding,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
