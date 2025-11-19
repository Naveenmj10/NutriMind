import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/widgets/no_network/no_internet_widget.dart';

class ConnectivityService {
  ///
  final Connectivity connectivity = Connectivity();
  final connectivityStatusStream = StreamController<bool>.broadcast();

  Stream<bool> get isConnectedStream => connectivityStatusStream.stream;

  ///
  ConnectivityService() {
    connectivity.onConnectivityChanged.listen((result) {
      _updateConnectionStatus(result);
    });
    fetchConnectivity();
  }

  ///
  Future<void> fetchConnectivity() async {
    try {
      final result = await connectivity.checkConnectivity();
      _updateConnectionStatus(result);
    } catch (e) {
      debugPrint('Could\'t check connectivity status: $e');
    }
  }

  ///
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    bool newStatus;
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
        newStatus = true;
        break;
      default:
        newStatus = false;
        break;
    }
    debugPrint("Internet connection status $newStatus");
    connectivityStatusStream.add(newStatus);
  }
}

///
Future<void> listenToConnectivity() async {
  ConnectivityService().isConnectedStream.listen((isConnected) {
    if (isConnected) {
      if (NoInternetPopUpWidget.isShowing) {
        NoInternetPopUpWidget.dismiss();
      }
    } else {
      if (!NoInternetPopUpWidget.isShowing) {
        NoInternetPopUpWidget.show();
      }
    }
  });
}