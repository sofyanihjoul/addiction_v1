import 'dart:developer';

import 'package:addiction_app_v1/views/Welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:ui' as ui;

import '../Models/register_model.dart';
import 'addiction_type_view.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

RegisterModel model = RegisterModel();
//sign Up background
Widget signupSection(BuildContext context) => Column(
      children: [
        //stack to write text on blue shape
        Stack(
          children: [
            CustomPaint(
              painter: RPSCustomPainter(),
              child: Container(
                width: 1180.77,
                height: 278.91,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 140, 20, 5),
              child: Text(
                'Get Started ',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 36,
                    fontFamily: 'Fonts\ZillaSlab-Bold.ttf'),
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
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
                    child: Image.asset(
                      'images/backspace.png',
                      width: 40,
                      height: 30,
                    ),
                  )),
            ),
          ],
        ),
        //create account (first name , lastname ,age, password , confirom password)
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 3, 32, 5),
          child: TextFormField(
            onChanged: ((value) {
              model.fName = value;
            }),
            validator: ((value) {
              if (value == null || value == "") {
                return "Please Enter your Firstname ";
              }

              return null;
            }),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              labelText: 'First name ',
            ),
          ),
        ),

        //lastname
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
          child: TextFormField(
            onChanged: (value) {
              model.lName = value;
            },
            validator: ((value) {
              if (value == null || value == "") {
                return "Please Enter your Lastname ";
              }

              return null;
            }),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              labelText: 'Last name ',
            ),
          ),
        ),

        //Enter the email
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
          child: TextFormField(
            onChanged: ((value) {
              model.email = value;
            }),
            validator: ((value) {
              if (value == null || value == "") {
                return "Please Enter your Email or phone number  ";
              }
              // if (value == '@' || value == num) {
              //   return null;
              // }
              return null;
            }),
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              labelText: 'Email or Phone Number ',
            ),
          ),
        ),
//password
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
          child: TextFormField(
            onChanged: (value) {
              model.password = value;
            },
            validator: ((value) {
              if (value == null || value == "") {
                return "The Password is too easyto guess";
              }
              if (value == Characters && value == num) {
                return null;
              }
              return null;
            }),
            obscureText: true, // FOR PASSWORD
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              labelText: 'Enter your password',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
          child: TextFormField(
            validator: ((value) {
              if (value == null || value == null) {
                return "The Password is too  easy to guess";
              }
              if (value == Characters && value == num) {
                return null;
              }
              return null;
            }),
            obscureText: true, // FOR PASSWORD
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              labelText: 'Confirom Password',
            ),
          ),
        ),
      ],
    );

final _formKey = GlobalKey<FormState>();
//design the sign up button
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom();

// column view
class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6C7C9),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            signupSection(context),
            ElevatedButton(
                onPressed: () {
                  // _formKey.currentState!.validate() to validate Form
                  setState(() {});
                  if (_formKey.currentState!.validate()) {
                    // Call signup Function (signup Api)

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TypeOffAddictionPage(
                                model: model,
                              )),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(355, 63),
                  backgroundColor: Color(0xff245865),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 25),
                ))
          ]),
        ),
      ),
    );
  }
}

//class for the blue shape
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.3895744, size.height * -0.4630392);
    path_0.cubicTo(
        size.width * -0.3862359,
        size.height * -1.265510,
        size.width * 0.3954077,
        size.height * -0.8184935,
        size.width * 1.002674,
        size.height * -0.8143922);
    path_0.cubicTo(
        size.width * 1.609938,
        size.height * -0.8102908,
        size.width * 1.812862,
        size.height * -1.250657,
        size.width * 1.809526,
        size.height * -0.4481863);
    path_0.cubicTo(
        size.width * 1.806187,
        size.height * 0.3542843,
        size.width * 1.311197,
        size.height * 1.001490,
        size.width * 0.7039333,
        size.height * 0.9973889);
    path_0.cubicTo(
        size.width * 0.09666949,
        size.height * 0.9932843,
        size.width * -0.3929103,
        size.height * 0.3394314,
        size.width * -0.3895744,
        size.height * -0.4630392);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader =
        ui.Gradient.radial(Offset(0, 0), size.width * 0.002564103, [
      Color(0xffEBEBED).withOpacity(0.5),
      Color(0xffCFB49F).withOpacity(0.5),
      Color(0xff245865).withOpacity(0.4),
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
