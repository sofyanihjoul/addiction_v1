import 'dart:convert';

import 'package:addiction_app_v1/views/sign_up.dart';
import 'package:flutter/material.dart';

import '../Models/addiction_type_model.dart';
import '../Models/register_model.dart';
import '../api/sign_up_apis.dart';

class TypeOffAddictionPage extends StatefulWidget {
  RegisterModel model;
  TypeOffAddictionPage({super.key, required this.model});

  @override
  State<TypeOffAddictionPage> createState() => _TypeOffAddictionPageState();
}

Widget QuestionAnswersectoion(BuildContext context) => Center(
      //body: SingleChildScrollView(

      child: Column(
        children: [
          //background [BLUE SHAP]
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 37),
            child: CustomPaint(
              painter: RPSCustomPainter(),
              child: Container(
                width: 714.47,
              ),
            ),
          ),

          //SELECT TYPE OF ADDICTION
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 12, 50, 56),
            child: Text(
              'Select Type Of Addiction ',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(20, 17, 20, 56),
            child: Text(
              '*you can select more than one type of addiction  ',
              style: TextStyle(fontSize: 15),
            ),
          ),
          FutureBuilder<Addictiontypes?>(
            future: getAddictionTypes(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              return snapshot.hasData
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(32, 22, 32, 15),
                            child: GestureDetector(
                              onTap: () async {
                                model.addictionTypeId = snapshot
                                    .data!.data![index]!.addictionTypeId;
                                await registerUser(model);
                              },
                              child: SizedBox(
                                  child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.50),
                                child: SizedBox(
                                  width: 326,
                                  height: 63,
                                  child: Center(
                                    child: Text(
                                        "${snapshot.data!.data![index]!.addictionTypeName}"),
                                  ),
                                ),
                              )),
                            ),
                          );
                        },
                      ),
                    )
                  :
                  // Loading
                  Container();
            },
          ),

          // Column(
          //   children: [
          //     //Addiction 1
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(32, 220, 32, 15),
          //       child: SizedBox(
          //           child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(25.0),
          //         ),
          //         color: Color(0xffFFFFFF).withOpacity(0.50),
          //         child: const SizedBox(
          //           width: 326,
          //           height: 63,
          //         ),
          //       )),
          //     ),
          //     //Addiction 2
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
          //       child: SizedBox(
          //           child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(25.0),
          //         ),
          //         color: Color(0xffFFFFFF).withOpacity(0.50),
          //         child: const SizedBox(
          //           width: 326,
          //           height: 63,
          //         ),
          //       )),
          //     ),

          //     //Addiction 3
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
          //       child: SizedBox(
          //           child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(25.0),
          //         ),
          //         color: Color(0xffFFFFFF).withOpacity(0.50),
          //         child: const SizedBox(
          //           width: 326,
          //           height: 63,
          //         ),
          //       )),
          //     ),
          //     //Addiction 4
          //     Padding(
          //       padding: EdgeInsets.fromLTRB(32, 15, 32, 15),
          //       child: SizedBox(
          //           child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(25.0),
          //         ),
          //         color: Color(0xffFFFFFF).withOpacity(0.50),
          //         child: const SizedBox(
          //           width: 326,
          //           height: 63,
          //         ),
          //       )),
          //     ),
          //   ],
          // )
        ],
      ),
    );

class _TypeOffAddictionPageState extends State<TypeOffAddictionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff245865).withOpacity(0.30),
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
    path_0.moveTo(size.width * 1.447200, size.height * 0.5061378);
    path_0.cubicTo(
        size.width * 1.447246,
        size.height * 1.325734,
        size.width * 0.7945359,
        size.height * 0.8746410,
        size.width * 0.2886513,
        size.height * 0.8746891);
    path_0.cubicTo(
        size.width * -0.2172336,
        size.height * 0.8747340,
        size.width * -0.3847256,
        size.height * 1.325901,
        size.width * -0.3847718,
        size.height * 0.5063045);
    path_0.cubicTo(
        size.width * -0.3848205,
        size.height * -0.3132897,
        size.width * 0.02524290,
        size.height * -0.9777404,
        size.width * 0.5311282,
        size.height * -0.9777853);
    path_0.cubicTo(
        size.width * 1.037013,
        size.height * -0.9778301,
        size.width * 1.447151,
        size.height * -0.3134554,
        size.width * 1.447200,
        size.height * 0.5061378);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff245865).withOpacity(0.8);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
