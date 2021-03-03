import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// import 'indicator.dart';

class PieChartStorage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartStorageState();
}

class PieChartStorageState extends State {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
          pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
            setState(() {
              if (pieTouchResponse.touchInput is FlLongPressEnd ||
                  pieTouchResponse.touchInput is FlPanEnd) {
                touchedIndex = -1;
              } else {
                touchedIndex = pieTouchResponse.touchedSectionIndex;
              }
            });
          }),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 5,
          centerSpaceRadius: 20,
          sections: showingSections()),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 50 : 40;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xffA9C4FA).withOpacity(0.5),
            value: 70,
            showTitle: false,
            title: '70%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfffFF629F),
            value: 30,
            showTitle: false,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          return null;
      }
    });
  }
}
