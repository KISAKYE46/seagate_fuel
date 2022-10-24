// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seagate_fuel/fragments/DashboardFragment.dart';

import '../fragments/HistoryFragment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> fragments = [
    FuelFragment(),
    BillFragment(),
  ];

  int currentFragmentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 250, 248, 248),
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  left: 0,
                  top: 90,
                  bottom: 80,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 100),
                    child: IndexedStack(
                      index: currentFragmentIndex,
                      children: fragments,
                    ),
                  )),
              Positioned(
                  top: 30,
                  right: 0,
                  left: 0,
                  child: Container(
                      width: width * 0.953,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      margin: EdgeInsets.all(width * 0.025),
                      padding: const EdgeInsets.all(9),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  currentFragmentIndex = 0;
                                });
                              },
                              icon: const Icon(FontAwesomeIcons.bars)),
                          const Text(
                            "Dashboard",
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  currentFragmentIndex = 1;
                                });
                              },
                              icon: const Icon(FontAwesomeIcons.user)),
                        ],
                      ))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                      width: width * 0.953,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      margin: EdgeInsets.all(width * 0.025),
                      padding: const EdgeInsets.all(9),
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  currentFragmentIndex = 0;
                                });
                              },
                              icon: const Icon(FontAwesomeIcons.gasPump)),
                          FloatingActionButton(
                            isExtended: true,
                            child: Icon(Icons.add),
                            onPressed: () {},
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  currentFragmentIndex = 1;
                                });
                              },
                              icon: const Icon(
                                  FontAwesomeIcons.moneyBillTrendUp)),
                        ],
                      )))
            ],
          )),
    );
  }

  void changePage(BuildContext context, int index) {}
}
