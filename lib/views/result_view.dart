import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorDemo extends StatefulWidget {
  @override
  _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
}

class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {
  double percent = 0.0;

  late double _height;
  late double _width;

  @override

  //percent
  void initState() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Center(
              child: Text(
                'Result ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
            ),
            new CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: new Text(
                //daynamic
                "70.0%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
