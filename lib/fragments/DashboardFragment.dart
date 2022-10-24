import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:seagate_fuel/widgets/dashboard_card.dart';

import '../widgets/LineChartWidget.dart';

class FuelFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FuelFragmentState();
  }
}

class _FuelFragmentState extends State<FuelFragment> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      alignment: Alignment.center,
      child: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            dashbordCard(context, "Last Consumption", "13.7", "L/100KM",
                "900.7KM", FontAwesomeIcons.line, Colors.blueGrey),
            dashbordCard(context, "6 months Average", "18.3", "L/100KM",
                "900.7KM", FontAwesomeIcons.line, Colors.redAccent)
          ],
        ),
        dashboardNotice(context, "Drive safely, for the sake of all of us!"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            smallDashboardCard(context, "Fuel Price", "38.6", "12KM"),
            smallDashboardCard(context, "Monthly Cost", "88.2", "12KM")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            smallDashboardCard(context, "Last Trip Cost", "38.9", "PLN/KM"),
            smallDashboardCard(context, "Average Trip Cost", "58.7", "PLN/KM")
          ],
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Card(
            elevation: 2,
            child: LineChartWidget(),
          ),
        )
      ]),
    );
  }
}
