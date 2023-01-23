import 'package:addiction_app_v1/views/Forget_Password_view.dart';
import 'package:addiction_app_v1/views/Home_page_view.dart';
import 'package:addiction_app_v1/views/Question_Answer_view.dart';
import 'package:addiction_app_v1/views/Welcome_Page_view.dart';
import 'package:addiction_app_v1/views/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:ui' as ui;

class guestPage extends StatefulWidget {
  const guestPage({super.key});

  @override
  State<guestPage> createState() => _guestPageState();
}

//Login Background Section

final _formKey = GlobalKey<FormState>();
//TO Style Button
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  // onPrimary: Colors.black87,
  primary: Color(0xff245865),
  minimumSize: Size(326, 63),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

//BULID SECTION
class _guestPageState extends State<guestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: RPSCustomPainter(),
                    child: Container(
                      width: 1180.77,
                      height: 278.91,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 100, 0, 0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Welcomepage()),
                          );
                        },
                        //BACKSPACE
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
                          child: Image.asset(
                            'image/backspace.png',
                            width: 40,
                            height: 30,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 160, 93, 0),
                    child: Text(
                      'HELLO !',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 36,
                          fontFamily: 'Fonts/ZillaSlab-Bold.ttf'),
                    ),
                  ),
                ],
              ),
              // enter  name
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Enter Your Name ',
                      ),
                    ),
                  ),

                  //your age
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Enter Your Age',
                      ),
                    ),
                  ),
                ],
              ),

              //BUTTON
              ElevatedButton(
                  style: raisedButtonStyle,

                  //This BUTTON to go Home Page
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionPage(
                                model: model,
                              )),
                    );
                  },

                  //LABEL BUTTON
                  child: const Text(
                    "let's go",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
            ],
          ),
        ),
      ),
    ); //END Scaffold
  }
}

//Design the blue shap
class RPSCustomPainter extends CustomPainter {
  @override
  //TO paint the shap
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.06167000, size.height * -2.719855);
    path_0.cubicTo(
        size.width * 0.559667,
        size.height * -1.255299,
        size.width * 0.6334949,
        size.height * -1.115361,
        size.width * 0.9044769,
        size.height * -0.4602614);
    path_0.cubicTo(
        size.width * 1.175456,
        size.height * 0.1948378,
        size.width * 1.537279,
        size.height * 0.1170253,
        size.width * 1.042982,
        size.height * 0.6524730);
    path_0.cubicTo(
        size.width * 0.5486846,
        size.height * 1.187917,
        size.width * -0.07169615,
        size.height * 1.090917,
        size.width * -0.3426769,
        size.height * 0.4358174);
    path_0.cubicTo(
        size.width * -0.6136590,
        size.height * -0.2192817,
        size.width * -0.4326256,
        size.height * -1.184411,
        size.width * 0.06167000,
        size.height * -1.719855);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader =
        //COLOR OF SHAPE
        ui.Gradient.radial(Offset(0, 0), size.width * 0.002564103, [
      Color(0xffEBEBED).withOpacity(0.5),
      Color(0xffCFB49F).withOpacity(0.5),
      Color(0xff245865).withOpacity(0.5),
      Color(0xffEDECEA).withOpacity(0.5),
      Color(0xffDAC3B5).withOpacity(0.5),
      Color(0xff015F69).withOpacity(0.5)
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
