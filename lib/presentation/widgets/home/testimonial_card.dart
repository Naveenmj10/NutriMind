import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';

class TestimonialCard extends StatelessWidget {
  final String testimonial;
  final String name;
  final String role;
  final int rating;
  final Color backgroundColor;
  final Color textColor;
  final Color nameColor;
  final Color roleColor;
  final Color starColor;

  const TestimonialCard({
    super.key,
    required this.testimonial,
    required this.name,
    required this.role,
    this.rating = 5,
    this.backgroundColor = const Color(0xFF5A5A5A),
    this.textColor = const Color(0xFFB0B0B0),
    this.nameColor = Colors.white,
    this.roleColor = const Color(0xFF9E9E9E),
    this.starColor = const Color(0xFF7A7A7A),
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;
    final isMediumScreen = screenWidth < 600;

    // Responsive values
    final cardPadding = isSmallScreen ? 16.0 : (isMediumScreen ? 20.0 : 24.0);
    final testimonialFontSize = isSmallScreen ? 14.0 : 16.0;
    final nameFontSize = isSmallScreen ? 18.0 : (isMediumScreen ? 20.0 : 24.0);
    final roleFontSize = isSmallScreen ? 14.0 : 16.0;
    final starSize = isSmallScreen ? 20.0 : (isMediumScreen ? 24.0 : 28.0);
    final verticalSpacing = isSmallScreen ? 12.0 : 20.0;

    return Container(
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Testimonial text
          Text(
            testimonial,
            style: TextStyle(
              fontSize: testimonialFontSize,
              fontFamily: FontFamily.inter,
              fontWeight: FontWeight.w400,
              color: textColor,
              height: 1.5,
            ),
          ),

          SizedBox(height: verticalSpacing),

          // Name and Stars Row (same layout, just responsive)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Name and Role Column
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: nameFontSize,
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.bold,
                        color: nameColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      role,
                      style: TextStyle(
                        fontSize: roleFontSize,
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        color: roleColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              // Stars
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                      (index) => Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 4),
                    child: Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      color: starColor,
                      size: starSize,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}