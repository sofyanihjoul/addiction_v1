import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NutrationPage extends StatefulWidget {
  const NutrationPage({super.key});

  @override
  State<NutrationPage> createState() => _NutrationPageState();
}

Widget DishesSectoion = Center(
  //body: SingleChildScrollView(

  child: Stack(
    children: [
      //background [Gray SHAP]

      CustomPaint(
        painter: RPSCustomPainter(),
        child: Container(
          width: 700,
          height: 900,
        ),
      ),

      //Title
      Padding(
        padding: EdgeInsets.fromLTRB(0, 92, 122, 27),
        child: Text(
          'Today Dishes',
          style: TextStyle(fontSize: 36, color: Color(0xffFFFFFF)),
        ),
      ),

      //Time of dishes
      SizedBox(
        height: 240,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //breackfast
            SizedBox(
                width: 152,
                height: 229,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 160, 12, 38),
                  child: Text(
                    'Breackfast',
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                )),

            //snack
            SizedBox(
                width: 152,
                height: 229,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 160, 12, 38),
                  child: Text(
                    'Snack',
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                )),

            //lunch
            SizedBox(
                width: 152,
                height: 229,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 160, 12, 38),
                  child: Text(
                    'Lunch',
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                )),

            //dinner
            SizedBox(
                width: 152,
                height: 229,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12, 160, 12, 38),
                  child: Text(
                    'Dinner',
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                )),
          ],
        ),
      ),

      //Image of dishes
      Stack(
        children: [
          //circle
          Padding(
            padding: EdgeInsets.fromLTRB(46, 280, 46, 0),
            child: Container(
              width: 307,
              height: 314,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),

          //image
          /*   Padding(
            padding: EdgeInsets.fromLTRB(50, 150, 27, 15),
           child: Image.asset(
              'images/breakfact.jpg',
              width: 60,
              height: 80,
            ),
          ),*/
        ],
      ),
    ],
  ),
);

class _NutrationPageState extends State<NutrationPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff245865).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(children: [DishesSectoion]),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5138340);
    path_0.lineTo(size.width, size.height * 0.5138340);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.5138340);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF0EBE7).withOpacity(0.8);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.lineTo(size.width, 0);
    path_1.lineTo(size.width, size.height * 0.5138340);
    path_1.lineTo(0, size.height * 0.5138340);
    path_1.lineTo(0, 0);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff245865).withOpacity(0.8);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
