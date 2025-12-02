import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';

class WeightTrackingChart extends StatelessWidget {
  const WeightTrackingChart({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();
    return SizedBox(
      height: 160,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 5,
          minY: 60,
          maxY: 90,

          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: false,
            horizontalInterval: 5,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.withOpacity(0.15),
                strokeWidth: 1,
              );
            },
          ),

          borderData: FlBorderData(show: false),

          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              color: appColors.chartColor,
              barWidth: 3,

              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    appColors.chartColor.withOpacity(0.4),
                  appColors.chartColor.withOpacity(0.05),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),

              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: appColors.chartColor,
                    strokeWidth: 2,
                    strokeColor: Colors.white,
                  );
                },
              ),

              spots: const [
                FlSpot(0, 85),
                FlSpot(1, 83),
                FlSpot(2, 80),
                FlSpot(3, 73),
                FlSpot(4, 80),
                FlSpot(5, 78),
              ],
            ),
          ],

          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  List<String> months = ["Apr", "May", "Jun", "Jul", "Aug", "Sep"];
                  if (value.toInt() >= 0 && value.toInt() < months.length) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        months[value.toInt()],
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black45,
                          fontFamily: "Inter",
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
