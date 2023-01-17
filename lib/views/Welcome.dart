import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:ui' as ui;

import '../ITEM/item.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  // onPrimary: Colors.black87,
  primary: Color(0xff245865),
  minimumSize: Size(326, 63),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);
Widget Welcomebackgroungsectoion = Column(
  children: [
    Stack(
      children: [
        CustomPaint(
          painter: RPSCustomPainter(),
          child: Container(
            color: (Color.fromRGBO(36, 88, 101, 0.7)),
            height: 300,
          ),
        ),
      ],
    ),
  ],
);

//
class _WelcomepageState extends State<Welcomepage> {
  List<Widget> slides = items
      .map((item) => Container(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(item['header'],
                          style: TextStyle(
                              fontSize: 48.0,
                              color: Color(0XffFFFFFF),
                              height: 2.0)),
                      Text(
                        item['description'],
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16.0,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset(
                          item['image'],

                          width: 379.0,
                          height: 379.0,
                          // alignment: Alignment.bottomCenter,
                        ),
                      ),
                      if (item['showButton'])
                        Column(
                          children: [
                            //Button sign up
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff245865), // background
                                  onPrimary: Colors.white, // font
                                ),
                                onPressed: () {},
                                child: Text("Get Started ")),

                            //Button guset
                            ElevatedButton(
                                onPressed: () {},
                                child: Text("Started as Guset")),
                          ],
                        )
                    ],
                  ),
                ),
              )
            ],
          )))
      .toList();
  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? Color(0XFF256075)
                    : Color(0XFF256075).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)),
          ));
  double currentPage = 0.0;
  final _pageViewController = new PageController();
  final _formKey = GlobalKey<FormState>();

  final ButtonStyle = ElevatedButton.styleFrom(
    // onPrimary: Colors.black87,
    primary: Color(0xff245865),
    minimumSize: Size(326, 63),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 219, 212, 1),
      body: Container(
        child: Stack(
          children: <Widget>[
            Welcomebackgroungsectoion,
            PageView.builder(
              controller: _pageViewController,
              itemCount: slides.length,
              itemBuilder: (BuildContext context, int index) {
                _pageViewController.addListener(() {
                  setState(() {
                    currentPage = _pageViewController.page!;
                  });
                });
                return slides[index];
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 70.0),
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CUSTOME PAGE SHAPE
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2232523, size.height * -1.156454);
    path_0.cubicTo(
        size.width * 0.7175487,
        size.height * -1.580934,
        size.width * 0.7950769,
        size.height * -0.6772336,
        size.width * 1.066059,
        size.height * -0.1578947);
    path_0.cubicTo(
        size.width * 1.337038,
        size.height * 0.3614441,
        size.width * 1.698862,
        size.height * 0.2997579,
        size.width * 1.204564,
        size.height * 0.7242401);
    path_0.cubicTo(
        size.width * 0.7102667,
        size.height * 1.148720,
        size.width * 0.08988615,
        size.height * 1.071822,
        size.width * -0.1810954,
        size.height * 0.5524836);
    path_0.cubicTo(
        size.width * -0.4520769,
        size.height * 0.03314572,
        size.width * -0.2710436,
        size.height * -0.7319704,
        size.width * 0.2232523,
        size.height * -1.156454);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader =
        ui.Gradient.radial(Offset(0, 0), size.width * 0.002564103, [
      Color(0xffEBEBED).withOpacity(0.7),
      Color(0xffCFB49F).withOpacity(0.7),
      Color(0xff245865).withOpacity(0.7),
      Color(0xffEDECEA).withOpacity(0.7),
      Color(0xffDAC3B5).withOpacity(0.7),
      Color(0xff015F69).withOpacity(0.7)
    ], [
      0,
      0.197917,
      0.40625,
      0.630208,
      0.8125,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
