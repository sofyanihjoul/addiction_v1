import 'package:addiction_app_v1/COMMON/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Models/answerQModel.dart';
import '../api/Qusetion_Answer_API.dart';
import 'Home_page_view.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<AnswerQModel> model = [];
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff245865).withOpacity(0.659),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              FutureBuilder(
                future: getQuestionanswermodel(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: w / 1.1,
                                    child: Stack(
                                      children: [
                                        //background
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 100, 0, 37),
                                          child: CustomPaint(
                                            painter: RPSCustomPainter(),
                                            child: Container(
                                              width: 500,
                                              height: 700,
                                            ),
                                          ),
                                        ),

                                        Column(
                                          children: [
                                            //Type of Question
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50, 210, 10, 20),
                                              child: Text(
                                                '${snapshot.data!.data![index]!.text}',
                                                style: TextStyle(
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.55),
                                                  fontSize: 30,
                                                ),
                                              ),
                                            ),
                                            //Answer Design
                                            SizedBox(
                                              height: 400,
                                              width: 200,
                                              child: ListView.builder(
                                                itemCount: snapshot
                                                    .data!
                                                    .data![index]!
                                                    .answers!
                                                    .length,
                                                itemBuilder: (context, indexx) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(32, 8, 32, 8),
                                                    //To go to the next QUESTION
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        AnswerQModel m =
                                                            AnswerQModel();
                                                        m.questionId = snapshot
                                                            .data!
                                                            .data![index]!
                                                            .id;
                                                        m.answerId = snapshot
                                                            .data!
                                                            .data![index]!
                                                            .answers![indexx]!
                                                            .answerId;
                                                        setState(() {
                                                          model.add(m);
                                                        });
                                                      },
                                                      child: SizedBox(
                                                          height: 100,
                                                          child: Card(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25.0),
                                                            ),
                                                            color: const Color(
                                                                    0xff245865)
                                                                .withOpacity(
                                                                    0.55),
                                                            child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                height: 63,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .fromLTRB(
                                                                          8,
                                                                          8,
                                                                          8,
                                                                          8),
                                                                  child: Text(
                                                                    '${snapshot.data!.data![index]!.answers![indexx]!.answerText}',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            25,
                                                                        color: const Color(0Xff000000)
                                                                            .withOpacity(0.55)),
                                                                  ),
                                                                )),
                                                          )),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                //function to go home page
                                if (index == snapshot.data!.data!.length - 1)
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: ElevatedButton(
                                        onPressed: () async {
                                          setState(() {
                                            //LOADING
                                            isLoading = true;
                                          });

                                          await registerUser(model);
                                          setState(() {
                                            isLoading = false;
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const cardspage()),
                                          );
                                        },
                                        //button
                                        child: const Text("go to home page")),
                                  )
                              ],
                            );
                          },
                        )
                      //Loading type
                      : spinkit;
                },
              ),
              if (isLoading) spinkit
            ],
          ),
        ));
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
/*  FutureBuilder<Addictiontypes?>(
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
                  :*/

/*   Column(
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
          )*/
