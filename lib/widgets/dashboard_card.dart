import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget dashbordCard(BuildContext context, String title, String bigValue,
    String smallValue, String footerValue, IconData footerIcon, Color color) {
  var width = MediaQuery.of(context).size.width;
  return SizedBox(
    child: Card(
      color: color,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white)),
            Text(
              bigValue,
              style: TextStyle(fontSize: 38, color: Colors.white),
            ),
            Text(smallValue, style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(footerValue, style: TextStyle(color: Colors.white)),
                Text("|", style: TextStyle(color: Colors.white)),
                Icon(FontAwesomeIcons.chartLine, color: Colors.white)
              ],
            )
          ],
        ),
      ),
    ),
    height: 0.40 * width,
    width: 0.46 * width,
  );
}

Widget smallDashboardCard(
    BuildContext context, String title, String dataValue, String smallValue) {
  var width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: 0.47 * width,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Row(
              children: [
                Text(
                  dataValue,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text(smallValue)
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget dashboardNotice(BuildContext context, String text) {
  var width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: 0.15 * width,
    child: Card(
        color: Color.fromARGB(255, 2, 75, 134),
        child: Container(
          padding: EdgeInsets.all(9),
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )),
  );
}
