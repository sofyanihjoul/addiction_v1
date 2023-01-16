import 'dart:js';

import 'package:addiction_app_v1/views/New_password_view.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:ui' as ui;

class ConfirmedPage extends StatefulWidget {
  const ConfirmedPage({super.key});

  @override
  State<ConfirmedPage> createState() => _ConfirmedPageState();
}

//confirim password background Sectoion
Widget ConfirombacgroundSection = Column(
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

        //TITILE
        Padding(
          padding: const EdgeInsets.fromLTRB(93, 160, 93, 0),
          child: Text(
            'Confirmed Code',
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 30,
                fontFamily: 'Fonts/ZillaSlab-LightItalic.ttf'),
          ),
        ),
      ],
    ),
  ],
);

//Small Text feild to Enter confirom  code
Widget EnterCodeSection = Column(
  children: [
    Image.asset(
      'images/confiromed.png',
      height: 237,
      width: 289,
    ),
    Row(
      children: [
        //FIRST NUMBER
        Padding(
          padding: const EdgeInsets.fromLTRB(70, 29, 10, 15),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Card(
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: TextField(
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ),
        //SECOND NUMBER
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 29, 8, 15),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Card(
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: TextField(
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ),
        // THIRD NUMBER
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 29, 8, 15),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Card(
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: TextField(
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ),
        //FORTH NUMBER
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 29, 10, 15),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Card(
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: TextField(
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
        ),
      ],
    ),
    //TEXT to resend the code
    Row(
      children: [
        Text(
          'Didn’t receive code?',
          style: TextStyle(
            color: Color(0Xff000000),
            fontSize: 20,
          ),
        ),
        Text(
          'RESEND',
          style: TextStyle(color: Color(0xff245865)),
        ),

        /* InkWell(
      // When the user tap on the resend , 
     onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ()),
            );
          },
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('Resend'),
      ),
    ),*/
      ],
    )
  ],
);

final _formKey = GlobalKey<FormState>();
//design the login button
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  // onPrimary: Colors.black87,
  primary: Color(0xff245865),
  minimumSize: Size(326, 63),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

class _ConfirmedPageState extends State<ConfirmedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6C7C9),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            ConfirombacgroundSection,
            EnterCodeSection,

            //DESIGN BUTTON
            ElevatedButton(
                style: raisedButtonStyle,

                //button to confirm and go to home page
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewPasswordPage()));

                  // _formKey.currentState!.validate() to validate Form
                  if (_formKey.currentState!.validate()) {
                    // Call rest Function (Confirom Api)
                  }
                },

                //Rest Password  button
                child: const Text(
                  "confirm",
                  style: TextStyle(
                      fontSize: 25, fontFamily: 'Fonts/ZillaSlab-SemiBold.ttf'),
                )),
          ]),
        ),
      ),
    ); //End scaffold
  }
}

//SHAP
class RPSCustomPainter extends CustomPainter {
  @override
  //DESIGN THE SHAP
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.397905, size.height * 0.1635465);
    path_0.cubicTo(
        size.width * 1.446774,
        size.height * 1.168743,
        size.width * 0.7934949,
        size.height * 0.7029826,
        size.width * 0.3079974,
        size.height * 0.7708478);
    path_0.cubicTo(
        size.width * -0.1774985,
        size.height * 0.8387130,
        size.width * -0.3113641,
        size.height * 1.414500,
        size.width * -0.3602333,
        size.height * 0.4093052);
    path_0.cubicTo(
        size.width * -0.4091026,
        size.height * -0.5958913,
        size.width * -0.05514513,
        size.height * -1.465778,
        size.width * 0.4303513,
        size.height * -1.533643);
    path_0.cubicTo(
        size.width * 0.9158487,
        size.height * -1.601509,
        size.width * 1.349036,
        size.height * -0.8416478,
        size.width * 1.397905,
        size.height * 0.1635465);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader =
        //COLOR OF SHAP
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
