import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import '../../../application/injections/injector.dart';
import '../../../data/model/fat_loss_model.dart';
import '../../../data/model/workout_model.dart';
import '../../../foundation/theme/colors.dart';

class FatLossCard extends StatelessWidget {
  final FatLossModel data;

  FatLossCard({super.key, required this.data});
  final AppColors appColors = injector<AppColors>();
  @override
  Widget build(BuildContext context) {

    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: h * 0.015),
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            // color: Color(0xFF1F1F1F),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  data.img,
                  width: w * 0.34,
                  height: h * 0.15,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: w * 0.04),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Day tag
                    Text(
                      data.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appColors.primaryWhite,
                          fontSize:15,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.inter
                      ),
                    ),

                    SizedBox(height: h * 0.004),

                    Row(
                      children: [
                        Icon(Icons.access_time, color: appColors.primaryWhite, size: w * 0.04),
                        SizedBox(width: 5),
                        Text(
                          data.time,
                          style: TextStyle(color: appColors.primaryWhite, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: FontFamily.inter),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: appColors.primaryWhite, size: w * 0.04),
                        SizedBox(width: 5),
                        Text(
                          data.calories,
                          style: TextStyle(color: appColors.primaryWhite, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: FontFamily.inter),
                        ),
                      ],
                    ),

                    SizedBox(height: h * 0.006),

                    Text(
                      data.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        color: appColors.primaryWhite,
                        fontSize: 12, fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.inter,
                      ),

                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.03, vertical: h * 0.003),
                      decoration: BoxDecoration(
                        color: Color(0xFF1AA86C),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        data.subscriptionPlan,
                        style: TextStyle(
                            color: appColors.primaryWhite,
                            fontSize: w * 0.03,
                            fontWeight: FontWeight.w700,
                            fontFamily: FontFamily.inter
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          color: appColors.dividerColor,
          height: 1,
          thickness: 8,
          radius: BorderRadius.circular(1),
        ),
      ],
    );
  }
}
