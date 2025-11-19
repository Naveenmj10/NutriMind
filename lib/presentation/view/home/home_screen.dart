import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeProvider(builder: (context, child) {
      ///
      final HomeViewModel viewModel =
      Provider.of<HomeViewModel>(context, listen: true);

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false, // ✅ Removes the back button
          title: Text("Home"),
        ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Home Screen"),
              )
            ],
          ));
    });
  }
}
