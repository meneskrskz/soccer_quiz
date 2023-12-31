import 'package:flutter/material.dart';
import 'package:soccer_project/first_page.dart';
import 'package:soccer_project/second_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: first_page.routeName,
    routes: {
      first_page.routeName: (context) => first_page(),
      second_page.routeName: (context) => second_page(),
    },
  ));
}
