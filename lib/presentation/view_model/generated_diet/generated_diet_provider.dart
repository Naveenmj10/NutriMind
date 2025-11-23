import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/generated_diet/generated_diet_view_model.dart';
import 'package:provider/provider.dart';

class GeneratedDietProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const GeneratedDietProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GeneratedDietViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return GeneratedDietViewModel();
        });
  }
}
