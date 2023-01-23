import 'package:addiction_app_v1/views/Confirom_view.dart';
import 'package:addiction_app_v1/views/Home_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui' as ui;
import 'Log_in_view.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

//New password background Sectoion
Widget NewPasswordbacgroundSection(BuildContext context) => Column(
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
                          builder: (context) => const confirompassword()),
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
              padding: const EdgeInsets.fromLTRB(93, 160, 60, 0),
              child: Text(
                'Reset Password',
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

//To enter new password
Widget EnterNewPassSection = Column(
  children: [
    //NEW PASSWORD
    Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
      child: TextFormField(
        //CHECK
        validator: ((value) {
          if (value == null || value.isEmpty) {
            return "PLEASE ENTER NEW PASSWORD";
          }
          return null;
        }),
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
          labelText: 'New Password',
        ),
      ),
    ),

    //CONFIROM PASSWORD
    Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 15),
      child: TextFormField(
        //CHECK
        validator: ((value) {
          if (value == null || value.isEmpty) {
            return "PLEASE ENTER NEW PASSWORD ";
          }
          return null;
        }),
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
          labelText: 'Confirom Password',
        ),
      ),
    ),
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

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6C7C9),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            NewPasswordbacgroundSection(context),
            EnterNewPassSection,

            //DESIGN BUTTON
            ElevatedButton(
                style: raisedButtonStyle,

                //button to confirm and go to home page
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cardspage()));

                  // _formKey.currentState!.validate() to validate Form
                  if (_formKey.currentState!.validate()) {
                    // Call rest Function (Confirom Api)
                  }
                },

                //Rest Password  button
                child: const Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: 25,
                  ),
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
