import '../../foundation/enum/flavor_enum.dart';

class AppConfig {
  ///
  /// [Flavor] => Flavor
  ///
  final Flavor flavor;

  ///
  final String baseURL;

  ///
  final String flavorName;

  ///
  /// [getAppScheme] Which returns the application scheme
  ///
  void saveAppScheme() {
    globalFlavor = flavor;
  }

  ///
  /// Constructor
  ///
  AppConfig({
    required this.flavor,
    required this.baseURL,
    required this.flavorName,
  }) {
    saveAppScheme();
  }
}

///
/// static global app flavor
///
Flavor globalFlavor = Flavor.dev;
