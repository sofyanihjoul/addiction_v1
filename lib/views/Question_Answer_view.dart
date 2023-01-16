import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestionAnswerPage extends StatefulWidget {
  const QuestionAnswerPage({super.key});

  @override
  State<QuestionAnswerPage> createState() => _QuestionAnswerPageState();
}

Widget QuestionAnswersectoion(BuildContext context) => Center(
      //body: SingleChildScrollView(

      child: Stack(
        children: [
          //background [Gray SHAP]
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 37),
            child: CustomPaint(
              painter: RPSCustomPainter(),
              child: Container(
                width: 500,
                height: 700,
              ),
            ),
          ),
          //Question
          Padding(
            padding: EdgeInsets.fromLTRB(50, 210, 10, 20),
            child: Text(
              'Type of the Question ? ',
              style: TextStyle(
                color: Color(0xff000000).withOpacity(0.55),
                fontSize: 30,
              ),
            ),
          ),

          Column(
            children: [
              //Answer 1
              Padding(
                padding: EdgeInsets.fromLTRB(32, 340, 32, 15),
                //To go to the next question
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionAnswerPage()),
                    );
                  },
                  child: SizedBox(
                      child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xff245865).withOpacity(0.55),
                    child: SizedBox(
                        width: 326,
                        height: 63,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(42, 20, 42, 20),
                          child: Text(
                            'Answer 1 ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0Xff000000).withOpacity(0.55)),
                          ),
                        )),
                  )),
                ),
              ),

              //Answer 2
              Padding(
                padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
                //To go to the next question
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionAnswerPage()),
                    );
                  },
                  child: SizedBox(
                      child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xff245865).withOpacity(0.55),
                    child: SizedBox(
                        width: 326,
                        height: 63,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(42, 20, 42, 20),
                          child: Text(
                            'Answer 2',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0Xff000000).withOpacity(0.55)),
                          ),
                        )),
                  )),
                ),
              ),

              //Answer 3
              Padding(
                padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
                //To go to the next question
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionAnswerPage()),
                    );
                  },
                  child: SizedBox(
                      child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xff245865).withOpacity(0.55),
                    child: SizedBox(
                        width: 326,
                        height: 63,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(42, 20, 42, 20),
                          child: Text(
                            'Answer 3 ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0Xff000000).withOpacity(0.55)),
                          ),
                        )),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff245865).withOpacity(0.659),
      body: SingleChildScrollView(
        child: Column(children: [QuestionAnswersectoion(context)]),
      ),
    );
  }
}

//SHAPE
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.09677419);
    path_0.cubicTo(0, size.height * 0.04332726, size.width * 0.06887923, 0,
        size.width * 0.1538462, 0);
    path_0.lineTo(size.width * 0.8461538, 0);
    path_0.cubicTo(size.width * 0.9311205, 0, size.width,
        size.height * 0.04332726, size.width, size.height * 0.09677419);
    path_0.lineTo(size.width, size.height * 0.9032258);
    path_0.cubicTo(size.width, size.height * 0.9566726, size.width * 0.9311205,
        size.height, size.width * 0.8461538, size.height);
    path_0.lineTo(size.width * 0.1538462, size.height);
    path_0.cubicTo(size.width * 0.06887923, size.height, 0,
        size.height * 0.9566726, 0, size.height * 0.9032258);
    path_0.lineTo(0, size.height * 0.09677419);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF0EBE7).withOpacity(0.60);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
