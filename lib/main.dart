import 'core/di/dependancy_injection.dart';
import 'core/routing/app_router.dart';
import 'e_commers_app.dart';
import 'package:flutter/material.dart';

void main() {  WidgetsFlutterBinding.ensureInitialized();

  setUpGetIt();
  AppRouter appRouter = AppRouter();
  runApp(EcomerceApp(appRouter: appRouter));
}
