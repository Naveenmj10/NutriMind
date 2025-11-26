import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import 'package:nutri_mind/presentation/widgets/custom/common_appbar.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';
import '../../view_model/scan/scan_provider.dart';
import '../../view_model/scan/scan_view_model.dart';

@RoutePage()
class ScanMealScreen extends StatefulWidget {
  const ScanMealScreen({super.key});

  @override
  State<ScanMealScreen> createState() => _ScanMealScreenState();
}

class _ScanMealScreenState extends State<ScanMealScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final AppColors appColors = injector<AppColors>();
    return ScanProvider(
        builder: (context, child) {
          final ScanViewModel viewModel = Provider.of<ScanViewModel>(
            context,
            listen: true,
          );
          final AppColors appColors = injector<AppColors>();

          return Scaffold(
            backgroundColor: Colors.black,
            appBar: CustomAppBar(appBarTitle: ""),
            body: SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                height: 480,
                padding: const EdgeInsets.symmetric(
                    vertical: 32, horizontal: 20),
                decoration: BoxDecoration(
                  color: appColors.grey,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.08), width: 1),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Upload or Scan your meal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w800,
                          height: 1.4,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Upload button
                      _buildScanOption(
                        icon: Assets.images.icnUpload.path,
                        title: "Upload for Web",
                        appColors: appColors,
                        onTap: () {
                          viewModel.handleNavigationToScanResultsScreen();
                        },
                      ),
                      const SizedBox(height: 22),

                      // Scan button
                      _buildScanOption(
                        icon: Assets.images.icnCamera.path,
                        title: "Scan for Mobile",
                        appColors: appColors,
                        onTap: () {
                          viewModel.handleNavigationToScanResultsScreen();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget _buildScanOption({
    required String icon,
    required String title,
    required AppColors appColors,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 150,
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: appColors.darkGrey,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: appColors.textGrey.withValues(alpha: 0.2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              icon,
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: FontFamily.inter,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
