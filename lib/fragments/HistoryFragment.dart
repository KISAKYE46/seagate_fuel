import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BillFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BillFragmentState();
  }
}

class _BillFragmentState extends State<BillFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(children: const [
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            isThreeLine: true,
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            isThreeLine: true,
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            isThreeLine: true,
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            isThreeLine: true,
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(7),
          child: ListTile(
            isThreeLine: true,
            leading: Icon(FontAwesomeIcons.gasPump),
            title: Text("Refilled Fuel In"),
            subtitle: Text("Done on 12th, Dec 2022"),
          ),
        ),
      ]),
    );
  }
}
