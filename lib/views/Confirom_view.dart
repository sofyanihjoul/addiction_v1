import 'package:addiction_app_v1/views/Forget_Password_view.dart';
import 'package:addiction_app_v1/views/New_password_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'dart:ui' as ui;

class confirompassword extends StatefulWidget {
  const confirompassword({super.key});

  @override
  State<confirompassword> createState() => _confirompasswordState();
}

Widget ConfirombacgroundSection(BuildContext context) => Column(
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
                          builder: (context) => const forgetpasswordPage()),
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

            //TITILE
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 140, 50, 0),
              child: Text(
                'Confirmed Code',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 30,
                    fontFamily: 'Fonts/ZillaSlab-LightItalic.ttf'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 250, 40, 5),
              child: Image.asset(
                'image/.png',
                width: 500,
                height: 200,
              ),
            ),
          ],
        ),
      ],
    );

class _confirompasswordState extends State<confirompassword> {
  @override
  Widget build(BuildContext context) {
    bool _onEditing = true;
    String? _code;

    return Scaffold(
      body: Column(
        children: [
          ConfirombacgroundSection(context),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Enter your code',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          VerificationCode(
            textStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).primaryColor),
            keyboardType: TextInputType.number,
            underlineColor: Colors
                .amber, // If this is null it will use primaryColor: Colors.red from Theme
            length: 4,
            cursorColor: Colors.blue,
            clearAll: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'clear all',
                style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[700]),
              ),
            ),
            margin: const EdgeInsets.all(12),
            onCompleted: (String value) {
              setState(() {
                _code = value;
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: _onEditing
                  ? const Text('Please enter full code')
                  : Text('Your code: $_code'),
            ),
          ),
          //DESIGN BUTTON
          ElevatedButton(

              //this button go to new password page
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPasswordPage()));
              },

              //Rest Password  button
              child: const Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
        ],
      ),
    );
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
