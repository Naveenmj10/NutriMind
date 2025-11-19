import 'package:flutter/material.dart';
import '../../foundation/enum/flavor_enum.dart';
import '../../foundation/io/http/additions/networking_constants.dart';
import '../config/app_config.dart';
import 'main.dart';

void main() async {

  // Launch the app with the given configuration
  launchApp(AppConfig(
    flavor: Flavor.dev,
    baseURL: NetworkingConstants.devBaseURL,
    flavorName: 'development',
  ));
}
