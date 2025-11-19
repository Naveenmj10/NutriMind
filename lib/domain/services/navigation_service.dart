import 'package:flutter/cupertino.dart';

import '../../application/routing/app_router.dart';
import '../../application/routing/app_router.gr.dart';

class NavigationService {
  final AppRouter appRouter;

  ///
  NavigationService(this.appRouter);

  /// Common popup
  Future<void> popIt(BuildContext context) async {
    Navigator.of(context).pop();
  }

  ///
  GlobalKey<NavigatorState> getNavigatorKey() {
    return appRouter.navigatorKey;
  }

  ///
  Future<void> navigateToHomeScreen() async {
    appRouter.navigate(const HomeRoute());
  }
}
