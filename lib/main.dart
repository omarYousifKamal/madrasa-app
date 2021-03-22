import 'package:c2less9schoolapp/UI_Screen/vars.dart';
import 'package:flutter/material.dart';
import 'UI_Screen/vars.dart';
import 'UI_Screen/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
