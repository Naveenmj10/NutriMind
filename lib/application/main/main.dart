import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../config/app_config.dart';
import '../config/kernel.dart';
import '../injections/injector.dart';
import '../routing/app_router.dart';

///
Future<void> launchApp(AppConfig appConfig) async  {
  final Kernel kernel = Kernel(appConfig: appConfig);
  await kernel.init();
  await kernel.run();
}

///
class MyApp extends StatelessWidget {

  /// Instance for auto router
  final AppRouter appRouter = injector<AppRouter>();
  // final AppTheme appTheme = injector<AppTheme>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// Configure auto router
      routerConfig: appRouter.config(),
      // theme: appTheme.basicTheme(),
    );
  }
}