import 'package:flutter/material.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/intros/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.

  final int initPosition=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tweak App-03',
      theme: ThemeData(
        primarySwatch: kGreenColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Start(initPosition),
    );
  }
}
