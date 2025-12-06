import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final AppColors appColors = injector<AppColors>();

  // Active tab index
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(vertical: h * 0.018, horizontal: w * 0.06),
      decoration: BoxDecoration(
        color: const Color(0xff2F2F2F),
        borderRadius: BorderRadius.circular(40),
      ),
      child: ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (context, index, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _roundBtn(Icons.add_home_rounded, 0),
              _roundBtn(Icons.data_thresholding_outlined, 1),
              _roundBtn(Icons.star_border_purple500, 2),
              _roundBtn(Icons.notifications_none_sharp, 3),
              _roundBtn(Icons.settings_outlined, 4),
            ],
          );
        },
      ),
    );
  }

  Widget _roundBtn(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _selectedIndex.value = index,
      child: ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (context, selected, _) {
          final isActive = selected == index;

          return Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: isActive ? appColors.stepsColor : const Color(0xFF474747),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 20,
              color: isActive ? Colors.white : appColors.primaryWhite,
            ),
          );
        },
      ),
    );
  }
}
