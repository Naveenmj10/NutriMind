import '../../foundation/io/http/additions/networking_constants.dart';
import '../../foundation/enum/flavor_enum.dart';
import '../config/app_config.dart';
import 'main.dart';

void main() {
  launchApp(AppConfig(
      flavor: Flavor.prod,
      baseURL: NetworkingConstants.liveBaseURL,
      flavorName: 'Production'));
}
