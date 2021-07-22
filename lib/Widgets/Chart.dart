import 'package:dmd/Utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? selectedVal="2020";
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 50, top: 40, bottom: 40),
          child: Row(
            children: [
              Text("Average New Trees Every Year",
                  style: GoogleFonts.lexendDeca(
                      color: Cst.borderColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              Spacer(),
              StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return DropdownButton<String>(
                  dropdownColor: Cst.darkBG,
                  value: selectedVal,
                 underline: Container(),
                 icon: SvgPicture.asset(
                   'assets/icons/down.svg',
                   color: Cst.borderColor,
                   width: 15,
                 ),
                 style: GoogleFonts.lexendDeca(
                      color: Cst.borderColor,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                  items: <String>['2021', '2020', '2019']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value,
                          style: GoogleFonts.lexendDeca(
                              color: Cst.borderColor,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() => selectedVal = val);
                  },
                );
              }),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          margin: EdgeInsets.only(left: 5,right: 50),
          height: 220,
          color: Colors.transparent,
          child: LineChart(
            sampleData1(),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear, // Optional
          ),
        ),
      ],
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
    maxX: 22,
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
      FlSpot(1, 1),
      FlSpot(3, 2.5),
      FlSpot(3.4, 2.5),
      FlSpot(3.4, 2.5),
      FlSpot(3.4, 2.5),
      FlSpot(3.4, 2),
      FlSpot(3.9, 2.7),
      FlSpot(4, 3.05),
      FlSpot(4.1, 3.45),
      FlSpot(4.5, 3),
      FlSpot(4.5, 3),
      FlSpot(4.5, 3),
      FlSpot(4.5, 3),
      FlSpot(4.5, 3),
      FlSpot(4.55, 3),
      FlSpot(4.65, 1.5),
      FlSpot(4.7, 1.5),
      FlSpot(4.75, 2),
      FlSpot(4.9,2),
      FlSpot(4.95,2),
      FlSpot(5,2),
      FlSpot(5.5,2),
      FlSpot(6,2),
      FlSpot(6.5,2.5),
      FlSpot(6.75,2.75),
      FlSpot(7,3),
      FlSpot(7.25,4),
      FlSpot(7.50,4),
      FlSpot(7.75,4),
      FlSpot(8,4),
      FlSpot(8.25,3.5),
      FlSpot(8.75,2),
      FlSpot(9,2.5),
      FlSpot(9.25,2),
      FlSpot(10,2),
      FlSpot(11,2),
      FlSpot(12,2),
      FlSpot(13,2),
      FlSpot(14,2.5),
      FlSpot(15,2.9),
      FlSpot(16,3),
      FlSpot(17,1.5),
      FlSpot(18,1.75),
      FlSpot(19,2),
      FlSpot(20,0),
      FlSpot(21,1.75),
      FlSpot(22,4),





    ],
    isCurved: false,
    colors: [
      const Color(0xff4af699).withOpacity(0.7),
      const Color(0xff624EE3),
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
