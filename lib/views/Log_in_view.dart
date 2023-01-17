import 'package:addiction_app_v1/views/Forget_Password_view.dart';
import 'package:addiction_app_v1/views/Home_page_view.dart';
import 'package:addiction_app_v1/views/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:ui' as ui;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
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
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6C7C9),
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
                    padding: const EdgeInsets.fromLTRB(15, 160, 93, 0),
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 36,
                          fontFamily: 'Fonts/ZillaSlab-Bold.ttf'),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
                    child: TextFormField(
                      //CHECK
                      validator: ((value) {
                        if (value == null || value == "") {
                          return "Enter your name or email";
                        }
                        return null;
                      }),

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),

                  //PASSWORD
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
                    child: TextFormField(
                      //CHECK
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        }
                        return null;
                      }),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        labelText: 'Enter your password',
                      ),
                    ),
                  ),
                ],
              ),

//text section (if you forget password , you dont have account 'sign up', 3 icon)
              Column(
                children: [
                  //button forget password
                  Padding(padding: EdgeInsets.all(12)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const forgetpasswordPage()),
                      );
                    },

                    //Forget Password
                    child: const Text(
                      'Forgot password ? ',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),

                  //button signup
                  Padding(padding: EdgeInsets.fromLTRB(60, 49, 60, 9)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const signupPage()),
                      );
                    },
                    //SignUp
                    child: Text(
                      'i don’t have account ? '
                      'Sign Up ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  //icon (Apple, google , facebook)
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(30, 0, 40, 100)),
                      Image.asset('images/applelogo.png'),
                      Padding(padding: EdgeInsets.fromLTRB(30, 0, 40, 100)),
                      Image.asset('images/gmaillogo.png'),
                      Padding(padding: EdgeInsets.fromLTRB(30, 0, 40, 100)),
                      Image.asset('images/facebooklogo.png'),
                    ],
                  )
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
                          builder: (context) => const cardspage()),
                    );

                    // _formKey.currentState!.validate() to validate Form
                    if (_formKey.currentState!.validate()) {
                      // Call Login Function (Login Api)
                    }
                  },

                  //LABEL BUTTON
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),

              // logintextsection(context),
            ],
          ),

//To enter and check the username and password
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
