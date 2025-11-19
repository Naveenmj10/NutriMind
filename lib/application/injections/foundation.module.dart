import 'package:injectable/injectable.dart';
import '../../domain/services/navigation_service.dart';
import '../../foundation/theme/colors.dart';
import '../routing/app_router.dart';

@module
abstract class FoundationModule {
  ///
  @singleton
  AppRouter appRouter() => AppRouter();

  ///
  @singleton
  NavigationService navigationService(AppRouter appRouter) =>
      NavigationService(appRouter);

  ///
  @lazySingleton
  AppColors appColors() => AppColors();
}
