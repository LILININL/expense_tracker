import 'package:expense_tracker/root/root_bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
  theme: ThemeData(
    hoverColor: Colors.transparent, // Remove hover effect color
    splashColor: Colors.transparent, // Remove splash effect color
    highlightColor: Colors.transparent, // Remove highlight effect color
  ),
  home: RootPage(),
));
