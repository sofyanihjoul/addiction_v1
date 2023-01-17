import 'dart:ui';

import 'package:addiction_app_v1/COMMON/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../api/user_api.dart';

class profilDrPage extends StatefulWidget {
  int userID;
  bool isDoctor;
  profilDrPage({super.key, required this.userID, required this.isDoctor});

  @override
  State<profilDrPage> createState() => _profilDrPageState();
}

class _profilDrPageState extends State<profilDrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff245865).withOpacity(0.655),
      body: SingleChildScrollView(
        child: Center(
          //body: SingleChildScrollView(

          child: Stack(
            children: [
              //background [Blue SHAP]
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 37),
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  child: Container(
                    width: 500,
                    height: 700,
                  ),
                ),
              ),
              FutureBuilder(
                future: getUserProfile(widget.userID),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Stack(
                          children: [
                            //IMAGE, CIRCLE
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    //circle
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(31, 150, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),

                                    //iamge
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(50, 150, 27, 15),
                                      child: widget.isDoctor
                                          ? Image.asset(
                                              'image/doctor.jpeg',
                                              width: 60,
                                              height: 80,
                                            )
                                          : Image.asset(
                                              'image/user.jpeg',
                                              width: 60,
                                              height: 80,
                                            ),
                                    ),
                                  ],
                                ),
                              ],
                            ), //END [image]

                            //Dr. NAME , MAJOR , ICONS
                            Column(
                              children: [
                                //name
                                Padding(
                                  padding: EdgeInsets.fromLTRB(55, 155, 71, 9),
                                  child: Text(
                                    widget.isDoctor
                                        ? 'Dr.${snapshot.data!.data!.fullName}'
                                        : '${snapshot.data!.data!.fullName}',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                //major
                                Padding(
                                  padding: EdgeInsets.fromLTRB(55, 9, 71, 18),
                                  child: Text(
                                    '${snapshot.data!.data!.specialityType}',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),

                                //Call,Massage
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(160, 18, 19, 48),
                                      child: Icon(Icons.call),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(19, 18, 144, 48),
                                      child: Icon(Icons.mail),
                                    )
                                  ],
                                ), //end[icons]
                              ],
                            ), //END

                            //TITLE
                            Padding(
                              padding: EdgeInsets.fromLTRB(31, 350, 220, 18),
                              child: widget.isDoctor
                                  ? const Text('About Doctor')
                                  : const Text('About '),
                            ),

                            //INFO. ABOUT DR.
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 370, 100, 10),
                                    child: Text(
                                        'Email : ${snapshot.data!.data!.email}'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 12, 100, 10),
                                    child: Text(
                                        'Phone : ${snapshot.data!.data!.phone}'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12, 12, 100, 10),
                                    child: Text(
                                        'Address : ${snapshot.data!.data!.address}'),
                                  ),
                                ),
                              ],
                            ),

                            // //TITLE Upcoming Schedules
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.fromLTRB(20, 440, 162, 11),
                            //   child: Text('Upcoming Schedules'),
                            // ),

                            // //CALENDER
                            // Stack(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.fromLTRB(
                            //           20, 460, 20, 11),
                            //       child: SizedBox(
                            //         child: Card(
                            //           shape: RoundedRectangleBorder(
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //           ),
                            //           color: const Color(0xff69B0EE)
                            //               .withOpacity(0.35),
                            //           child: const SizedBox(
                            //               width: 359,
                            //               height: 88,
                            //               child: Padding(
                            //                 padding: EdgeInsets.fromLTRB(
                            //                     100, 14, 44, 4),
                            //                 child: Center(
                            //                   child: Text(
                            //                     'Dr.name ',
                            //                     style: TextStyle(
                            //                         fontSize: 20,
                            //                         color: Color.fromARGB(
                            //                             64, 0, 0, 0)),
                            //                   ),
                            //                 ),
                            //               )),
                            //         ),
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       child: Padding(
                            //         padding: const EdgeInsets.fromLTRB(
                            //             30, 470, 20, 11),
                            //         child: Card(
                            //             shape: RoundedRectangleBorder(
                            //               borderRadius:
                            //                   BorderRadius.circular(10.0),
                            //             ),
                            //             color: const Color(0xffA3BCC0),
                            //             child: const SizedBox(
                            //               width: 64,
                            //               height: 64,
                            //             )),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 300,
                            ),
                            Center(child: spinkit),
                          ],
                        );
                },
              ),
            ],
          ),
        ),
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
    paint_0_fill.color = Color(0xffD9D9D9).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
