import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../injections/injector.dart';
import '../main/main.dart';
import 'app_config.dart';

class Kernel {
  final AppConfig appConfig;

  Kernel({required this.appConfig});

  static Kernel? instance;

  void initInstance() {
    if (instance != null) {
      return;
    } else {
      instance = this;
    }
  }

  Future<void> _initializeServices() async {
    /// Proceed to all initialization
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize get it
    GetIt getIt = await initializeInjections();
    await getIt.allReady();

    debugPrint("DEV DEBUG :: APPLICATION FLAVOR ${appConfig.flavor}");
  }

  Future<void> init() async {
    initInstance();
    await _initializeServices();
  }

  Widget build(Widget app) {
    return app;
  }

  Future<void> run() async {
    runApp(
      build(MyApp()),
    );
  }
}

AppConfig appConfig() => Kernel.instance!.appConfig;
