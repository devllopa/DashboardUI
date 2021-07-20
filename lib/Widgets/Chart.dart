import 'package:dmd/Utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 40, top: 50),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      color: Colors.transparent,
      child: LineChart(
        sampleData1(),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    );
  }
}

LineChartData sampleData1() {
  return LineChartData(
    lineTouchData: LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Cst.darkBG,
      ),
      touchCallback: (LineTouchResponse touchResponse) {},
      handleBuiltInTouches: true,
    ),
    gridData: FlGridData(show: true, drawHorizontalLine: true),
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        getTextStyles: (value) => GoogleFonts.lexendDeca(
            color: Color(0xffB9C1CC),
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontStyle: FontStyle.normal),
        margin: 8,
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'Jan';
            case 2:
              return 'Feb';
            case 4:
              return 'Mar';
            case 6:
              return 'Apr';
            case 8:
              return 'May';
            case 10:
              return 'Jun';
            case 12:
              return 'Jul';
            case 14:
              return 'Aug';
            case 16:
              return 'Sep';
            case 18:
              return 'Oct';
            case 20:
              return 'Nov';
            case 22:
              return 'Dec';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) => GoogleFonts.lexendDeca(
            color: Color(0xffB9C1CC),
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontStyle: FontStyle.normal),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '0';
            case 2:
              return '10m';
            case 3:
              return '20m';
            case 4:
              return '30m';
          }
          return '';
        },
        margin: 8,
        reservedSize: 30,
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border(
        bottom: BorderSide(color: Color(0xff4e4965), width: 2),
        left: BorderSide(
          color: Color(0xff4e4965),
          width: 2,
        ),
        right: BorderSide(
          color: Colors.transparent,
        ),
        top: BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
    lineBarsData: linesBarData1(),
  );
}

List<LineChartBarData> linesBarData1() {
  List<Color> colors = [Cst.borderColor.withOpacity(0.04)];
  final lineChartBarData1 = LineChartBarData(
    spots: [
      FlSpot(0, 1),
      FlSpot(3, 1.5),
      FlSpot(3, 1.5),
      FlSpot(3, 1.5),
      FlSpot(3, 1.5),
      FlSpot(5, 1.4),
      FlSpot(7, 3.4),
      FlSpot(10, 2),
      FlSpot(12, 2.2),
      FlSpot(13, 2),
      FlSpot(13, 2),
    ],
    isCurved: false,
    colors: [
      const Color(0xff4af699),
    ],
    barWidth: 2.5,
    isStrokeCapRound: false,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(show: true, colors: colors),
  );
  return [lineChartBarData1];
}
