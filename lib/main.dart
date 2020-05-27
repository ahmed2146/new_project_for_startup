import 'package:flutter/material.dart';
import 'package:new_project_for_startup/budgetApp/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budge tApp',
      home: HomePage(),
    );
  }
}
