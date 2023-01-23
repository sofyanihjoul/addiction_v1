import 'package:addiction_app_v1/COMMON/loader.dart';
import 'package:addiction_app_v1/views/profile_Dr_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../api/user_api.dart';
import 'my_Darwer_view.dart';

class cardspage extends StatefulWidget {
  const cardspage({super.key});

  @override
  State<cardspage> createState() => _cardspageState();
}

Widget homebackgroungsectoion(BuildContext context) => Column(
      //body: SingleChildScrollView(

      children: [
        Stack(
          children: [
            //background [Blue SHAP]
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: (Color.fromRGBO(36, 88, 101, 0.7)),
                height: 350,
              ),
            ),
            SizedBox(
              height: 63.0,
            ),

            //ROW to Title [select category]
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(14, 300, 0, 10),
                  child: const Text(
                    'Select Category ',
                    style: TextStyle(
                      fontSize: 20,
                      //fontFamily:
                    ),
                  ),
                ),
              ],
            ),

            //CONTAINER [SEARCH]
            Container(
              padding: EdgeInsets.fromLTRB(20, 145, 20, 100),
              child: Positioned(
                left: 15,
                right: 15,
                // top: 1000,
                //  bottom: 2000,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 0.4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black,
                  ),
                ),
              ),
            ),

            //Tiltle [Select Your sessions]
            Column(
              children: const [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 3),
                  child: Text(
                    'Select Your',
                    style: TextStyle(
                        fontFamily: 'Fonts/ZillaSlab-Italic.ttf',
                        fontSize: 32,
                        fontStyle: FontStyle.normal,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    'Session',
                    style: TextStyle(
                      fontFamily: 'Fonts/ZillaSlab-Italic.ttf',
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );

//CARDS [SELECT Category]
Widget homecardSection(BuildContext context) => SizedBox(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //card 1
          GestureDetector(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SizedBox(
                  child: Card(
                    color: Color(0xff245865),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: SizedBox(
                        width: 152,
                        height: 229,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Therapist of Addiction',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFFFFF)),
                          ),
                        )),
                  ),
                ),
              ),
            );
          }),

          SizedBox(
            child: Card(
              color: Color(0xff245865),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: const SizedBox(
                  width: 152,
                  height: 229,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Nutrition Specialist',
                      style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                    ),
                  )),
            ),
          ),

          SizedBox(
            child: Card(
              color: Color(0xff245865),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: const SizedBox(
                  width: 152,
                  height: 229,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Psycho Therapist',
                      style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
// TILTE OF [DOCTOR TYPE]
Widget hometextDrSection = Container(
  padding: const EdgeInsets.only(),
  child: Row(
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(28, 8, 0, 8),
        child: const Text(
          'Doctors ',
          style: TextStyle(
            fontSize: 20,
            //fontFamily:
          ),
        ),
      ),
    ],
  ),
);

//DOCTOR (name and ratting of the doctor)
Widget homedoctorsection = SizedBox(
  height: 240,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Stack(
        children: [
          //DOCTOR 1
          SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xffFFFFFF),
              child: const SizedBox(
                  width: 324,
                  height: 129,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(150, 14, 44, 4),
                    child: Center(
                      child: Text(
                        'Name dr',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color(0xff245865),
                child: const SizedBox(
                  width: 129,
                  height: 140,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              'images/doctor (1).png',
              height: 130,
              width: 100,
            ),
          ),
        ],
      ),
      //DOCTOR 2
      Stack(
        children: [
          SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xffFFFFFF),
              child: const SizedBox(
                  width: 324,
                  height: 129,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(150, 14, 44, 4),
                    child: Center(
                      child: Text(
                        'Name Dr ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff000000)),
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color(0xff245865),
                child: const SizedBox(
                  width: 129,
                  height: 140,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              'images/doctor (1).png',
              height: 130,
              width: 100,
            ),
          ),
        ],
      ),
      //DOCTOR 3
      Stack(
        children: [
          SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xffFFFFFF),
              child: const SizedBox(
                  width: 324,
                  height: 129,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100, 14, 44, 4),
                    child: Center(
                      child: Text(
                        'Dr.name ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff000000)),
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color(0xff245865),
                child: const SizedBox(
                  width: 129,
                  height: 140,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              'images/doctor (1).png',
              height: 130,
              width: 100,
            ),
          ),
        ],
      ),
      //DOCTOR 4
      Stack(
        children: [
          SizedBox(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xffFFFFFF),
              child: const SizedBox(
                  width: 324,
                  height: 129,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100, 14, 44, 4),
                    child: Center(
                      child: Text(
                        'Dr.name ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff000000)),
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Color(0xff245865),
                child: const SizedBox(
                  width: 129,
                  height: 140,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              'images/doctor (1).png',
              height: 130,
              width: 100,
            ),
          ),
        ],
      ),
    ],
  ),
);

//Build
class _cardspageState extends State<cardspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDADBDD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff245865).withOpacity(0.695),
      ),
      //MENU BAR
      drawer: const MyDarwer(),
      body: SingleChildScrollView(
        child: Column(children: [
          homebackgroungsectoion(context),
          //hometitleSection,
          homecardSection(context),
          hometextDrSection,
          SizedBox(
            height: 240,
            child: FutureBuilder(
              future: getDoctorsForHomePage(1),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              //profilDrPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profilDrPage(
                                          userID: snapshot
                                              .data!.data![index].userId!,
                                          isDoctor: true,
                                        )),
                              );
                            },
                            child: Stack(
                              children: [
                                SizedBox(
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: const Color(0xffFFFFFF),
                                    child: SizedBox(
                                        width: 324,
                                        height: 129,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              150, 14, 44, 4),
                                          child: Center(
                                            child: Text(
                                              '${snapshot.data!.data![index].fname} ${snapshot.data!.data![index].lname}',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xff000000)),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      color: const Color(0xff245865),
                                      child: const SizedBox(
                                        width: 129,
                                        height: 140,
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Image.asset(
                                    'image/doctor.jpeg',
                                    height: 130,
                                    width: 100,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    : spinkit;
              },
            ),
          ),
          //  homedoctorsection,
        ]),
      ),
    ); //END Scaffold
  }
}

//SHAP
class CustomClipPath extends CustomClipper<Path> {
  @override
//TO COSTUME THE SHAP
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.moveTo(size.width * 1.083744, size.height * 0.1565402);
    path.moveTo(size.width * 1.083744, size.height * 0.1565402);
    path.cubicTo(
        size.width * 1.222182,
        size.height * 0.5430696,
        size.width * 0.7240000,
        size.height * 0.5605127,
        size.width * 0.3969333,
        size.height * 0.7389430);
    path.cubicTo(
        size.width * 0.06986462,
        size.height * 0.9173734,
        size.width * 0.03776564,
        size.height * 1.189228,
        size.width * -0.1006744,
        size.height * 0.8026962);
    path.cubicTo(
        size.width * -0.2391144,
        size.height * 0.4161677,
        size.width * -0.08620128,
        size.height * -0.04182468,
        size.width * 0.2408664,
        size.height * -0.2202560);
    path.cubicTo(
        size.width * 0.5679333,
        size.height * -0.3986867,
        size.width * 0.9453026,
        size.height * -0.2299899,
        size.width * 1.083744,
        size.height * 0.1565402);

    path.close();

    return path;
  }

//COLOR OF SHAP
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    paint.color = Color(0xff245865);
  }

  //BOOL for (custome painter and custome clipper)
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
