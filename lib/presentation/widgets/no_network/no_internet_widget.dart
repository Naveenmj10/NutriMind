import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';

class NoInternetPopUpWidget {
  ///
  static final BuildContext context =
      injector<NavigationService>().getNavigatorKey().currentContext!;

  ///
  static bool isShowing = false;

  ///
  static void dismiss() {
    isShowing = false;
    final NavigationService navigationService = injector<NavigationService>();
    navigationService.popIt(context);
  }

  ///
  static void show() {
    if (isShowing) return; // Prevent multiple dialogs
    isShowing = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🏆 Lottie Animation
              Center(
                child: Lottie.asset(
                  'assets/animations/no_internet.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(16.0),
              //   child: Text(
              //     "Oops! It seems like there's no internet connection.",
              //     style: TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //       fontWeight: FontWeight.w500,
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              // const SizedBox(height: 12.0),
              // ElevatedButton(
              //   onPressed: () {
              //     ConnectivityService().fetchConnectivity();
              //   },
              //   child: const Text('Refresh'),
              // ),
            ],
          ),
        );
      },
    );
  }
}
