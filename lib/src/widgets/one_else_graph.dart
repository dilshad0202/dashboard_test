import 'package:dashboard_test/src/models/linearchart_datamodel.dart';
import 'package:dashboard_test/src/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OneElseGraphWidget extends StatelessWidget {
  const OneElseGraphWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: shadow(),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 1.8,
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "One Else Graph",
                    style: textStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "System Project",
                    style: textStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    
                    children: [
                      Text(
                        "429k",
                        style: textStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.arrow_drop_up,
                            color: Colors.blue,
                            size: 20,
                          ),
                          Text(
                            "+35%",
                            style: textStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: LineChart(LineChartData(
                lineTouchData: LineTouchData(enabled: false),
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                    topTitles: _axisTitles(),
                    leftTitles: _axisTitles(),
                    rightTitles: _axisTitles(),
                    show: true,
                    bottomTitles: AxisTitles(sideTitles: _bottomTitles)),
                minX: 0,
                maxX: 6,
                maxY: 9,
                minY: 0,
                lineBarsData: [
                  LineChartBarData(
                      color: Colors.white,
                      barWidth: 1.5,
                      dotData: FlDotData(
                        getDotPainter: (p0, p1, p2, p3) {
                          return FlDotCirclePainter(
                              radius: 1,
                              color: Colors.white,
                              strokeColor:
                                Colors.blue,
                              strokeWidth: 2);
                        },
                      ),
                      spots: LineChartDataModel.lineardataOneElseList
                          .map((e) => FlSpot(e.x ?? 0, e.y ?? 0))
                          .toList()),
                ])),
          ),
        ]),
      ),
    );
  }

  AxisTitles _axisTitles() {
    return AxisTitles(sideTitles: SideTitles(showTitles: false));
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = "";

          switch (value.toInt()) {
            case 0:
              text = "Sat";
              break;
            case 1:
              text = "Sun";
              break;
            case 2:
              text = "Mon";
              break;
            case 3:
              text = "Tue";
              break;
            case 4:
              text = "Wed";
              break;
            case 5:
              text = "Thu";
              break;
            case 6:
              text = "Fri";
              break;
          }
          return Text(
            "\n$text",
            style: textStyle(color: Colors.grey, fontSize: 10),
          );
        },
      );
}
