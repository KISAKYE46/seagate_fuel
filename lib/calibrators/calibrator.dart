import 'package:flutter/material.dart';

double calibrateFromWidth(BuildContext context, double percentage) {
  var width = MediaQuery.of(context).size.width;
  return width * percentage;
}

double calibrateFromHeidht(BuildContext context, double percentage) {
  var height = MediaQuery.of(context).size.height;
  return height * percentage;
}
