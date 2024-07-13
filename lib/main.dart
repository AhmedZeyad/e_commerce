import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/e_commers_app.dart';
import 'package:flutter/material.dart';

void main() {
  AppRouter appRouter = AppRouter();
  runApp(EcomerceApp(appRouter:appRouter));
}
