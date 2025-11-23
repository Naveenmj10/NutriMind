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
    return Container(
      padding: const EdgeInsets.all(24),
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
              fontSize: 16,
              fontFamily: FontFamily.inter,
              fontWeight: FontWeight.w400,
              color: textColor,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 20),

          // Name and Stars Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Name and Role Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: FontFamily.inter,
                      fontWeight: FontWeight.bold,
                      color: nameColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    role,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: FontFamily.inter,
                      fontWeight: FontWeight.w400,
                      color: roleColor,
                    ),
                  ),
                ],
              ),

              // Stars
              Row(
                children: List.generate(
                  5,
                      (index) => Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      color: starColor,
                      size: 28,
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