import 'package:flutter/material.dart';
import '../../../application/injections/injector.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback? onBack;
  final VoidCallback? onFavorite;
  final String appBarTitle;

  const CustomAppBar({
    super.key,
    this.onBack,
    this.onFavorite,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return AppBar(
      backgroundColor: appColors.black,
      elevation: 0,
      centerTitle: false,
      shadowColor: Colors.transparent,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appColors.textGrey.withValues(alpha: 0.17),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: appColors.textGrey,
            size: 20,
          ),
          onPressed: onBack ?? () => Navigator.of(context).pop(),
        ),
      ),
      title: Text(
        appBarTitle ?? "NutriMind",
        style: TextStyle(
          fontSize: 20,
          fontFamily: FontFamily.inter,
          fontWeight: FontWeight.w800,
          color: appColors.textGrey,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: appColors.textGrey.withValues(alpha: 0.17),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 24,
            ),
            onPressed: onFavorite,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
