import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';

class PasswordChangeSuccessDialog extends StatelessWidget {
  const PasswordChangeSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.black.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -70,
              left: 0,
              right: 0,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  // color: appColors.teal,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  Assets.images.icnSuccessTick.path,
                  height: 80,
                  width: 80,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Success icon
                const SizedBox(height: 24),

                // Title
                 Text(
                  "Password Changed!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: appColors.green,
                    fontFamily: FontFamily.inter,
                  ),
                ),

                const SizedBox(height: 12),

                // Message
                const Text(
                  "Your can now use your new password\nto login to your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: FontFamily.inter,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 32),

                // Log in button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // close dialog
                      Navigator.of(context).pop(); // go back to login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.teal,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: FontFamily.inter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
