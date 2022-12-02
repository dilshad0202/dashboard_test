import 'package:dashboard_test/src/models/bar_data_model.dart';

import 'package:dashboard_test/src/styles.dart';
import 'package:dashboard_test/src/widgets/color_recoganiser.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: shadow()),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Statitics",
                style:
                    textStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              Row(
                children: [
                  ColorRecoganizer(
                    color: const Color(0xff115293),
                    title: "WebSite",
                  ),
                  ColorRecoganizer(
                    color: const Color(0xff4791db),
                    title: "App",
                  ),
                  ColorRecoganizer(
                    color: const Color(0xffffbf5f),
                    title: "Linux",
                  ),
                  ColorRecoganizer(
                    color: const Color(0xffff6378),
                    title: "Windows",
                  )
                ],
              ),
              const SizedBox()
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: BarChart(BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                borderData: FlBorderData(
                    show: true,
                    border: const Border(
                        top: BorderSide(color: Colors.grey, width: 0.3),
                        bottom: BorderSide(color: Colors.grey, width: 0.3))),
                titlesData: FlTitlesData(
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                    leftTitles: AxisTitles(sideTitles: _leftTitles)),
                gridData: FlGridData(
                    getDrawingHorizontalLine: (value) {
                      return FlLine(strokeWidth: 0.3, color: Colors.grey);
                    },
                    drawHorizontalLine: true,
                    drawVerticalLine: false),
                maxY: 2500,
                minY: 0,
                barGroups: BarDataModel.barDatas
                    .map(
                      (e) => BarChartGroupData(
                          x: e.id ?? 0,
                          barRods: e.osList
                              ?.map((e) => BarChartRodData(
                                  width: 5,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  toY: e.y ?? 0,
                                  color: e.color))
                              .toList()),
                    )
                    .toList())),
          ),
        ]),
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = "";
        switch (value.toInt()) {
          case 0:
            text = "Jan";
            break;
          case 1:
            text = "Feb";
            break;
          case 2:
            text = "Mar";
            break;
          case 3:
            text = "Apr";
            break;
          case 4:
            text = "May";
            break;
          case 5:
            text = "June";
            break;
          case 6:
            text = "July";
            break;
        }
        return Text(
          text,
          style: textStyle(color: Colors.grey, fontSize: 10),
        );
      });

  SideTitles get _leftTitles => SideTitles(
      reservedSize: 30,
      showTitles: true,
      getTitlesWidget: (value, meta) {
        return Text(
          value.toInt().toString(),
          style: textStyle(color: Colors.grey, fontSize: 10),
        );
      });
}
