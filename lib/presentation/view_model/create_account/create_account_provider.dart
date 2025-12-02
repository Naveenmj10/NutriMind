import 'package:flutter/material.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:provider/provider.dart';

import 'create_account_view_model.dart';

class CreateAccountProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const CreateAccountProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CreateAccountViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return CreateAccountViewModel(
            navigationService: injector<NavigationService>(),
          );
        });
  }
}
