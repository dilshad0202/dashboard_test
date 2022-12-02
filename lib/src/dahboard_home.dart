import 'package:dashboard_test/src/styles.dart';
import 'package:dashboard_test/src/widgets/bar_chart.dart';
import 'package:dashboard_test/src/widgets/bottom_gridView.dart';

import 'package:dashboard_test/src/widgets/data_grid_view.dart';
import 'package:dashboard_test/src/widgets/followers_graph.dart';
import 'package:dashboard_test/src/widgets/one_else_graph.dart';

import 'package:dashboard_test/src/widgets/statitics_circular.dart';

import 'package:flutter/material.dart';

class DashBoardHomeScreen extends StatelessWidget {
  const DashBoardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Overview",
                style: textStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const TopDataGridView(),
              BarChartWidget(),
              const BottomGridData(),
              const StaticsCircularWidget(),
              const FollowerLineChart(),
              const OneElseGraphWidget()
            ],
          ),
        ),
      ),
    );
  }
}
