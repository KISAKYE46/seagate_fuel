import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          children: [
            SizedBox(
              child: Card(
                color: Color.fromARGB(195, 19, 108, 182),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Last Consumption",
                          style: TextStyle(color: Colors.white)),
                      Text(
                        "16.6",
                        style: TextStyle(fontSize: 38, color: Colors.white),
                      ),
                      Text("L/100KM", style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("+355KM", style: TextStyle(color: Colors.white)),
                          Text("|", style: TextStyle(color: Colors.white)),
                          Text("889", style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              height: 0.40 * width,
              width: 0.46 * width,
            ),
            SizedBox(
              child: Card(
                color: Color.fromARGB(195, 230, 76, 49),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("6 Months Average",
                          style: TextStyle(color: Colors.white)),
                      Text(
                        "12.6",
                        style: TextStyle(fontSize: 38, color: Colors.white),
                      ),
                      Text("L/100KM", style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("100,355KM",
                              style: TextStyle(color: Colors.white)),
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
            ),
          ],
        ),
        SizedBox(
          height: 0.15 * width,
          child: Card(
              color: Colors.blue,
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Take it easy on the pedal",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )),
        )
      ]),
    );
  }
}
