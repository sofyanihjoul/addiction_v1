import 'package:addiction_app_v1/views/my_Darwer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class changeyourthink extends StatefulWidget {
  const changeyourthink({super.key});

  @override
  State<changeyourthink> createState() => _changeyourthinkState();
}

class _changeyourthinkState extends State<changeyourthink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffC4E2FF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffC4E2FF).withOpacity(0.695),
        ),
        drawer: MyDarwer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Title
              Padding(
                padding: EdgeInsets.fromLTRB(32, 115, 32, 32),
                child: Text(
                  'Change Your Think ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              //text & image
              SizedBox(
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    //CARD 1
                    Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                          child: Image.asset(
                            'image/tecnoaddiction.jpg',
                            height: 250,
                            width: 380,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                          child: Text(
                            'What is technology Addiction?',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 360, 20, 32),
                          child: Text(
                            'Technology addiction (also called Internet addiction, or Internet use...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                    //CARD 2
                    Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                          child: Image.asset(
                            'image/foodaddiction.jpg',
                            height: 250,
                            width: 380,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                          child: Text(
                            'gluttonous night with obsessive eating ',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 380, 15, 32),
                          child: Text(
                            'But someone with binge eating disorder has a different relationship with food...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                    //CARD 4
                    Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                          child: Image.asset(
                            'image/addiction.jpg',
                            height: 250,
                            width: 380,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                          child: Text(
                            'what is addiction family',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 340, 20, 32),
                          child: Text(
                            'Family addicti is a broad term ...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                    //CARD 2
                    Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                          child: Image.asset(
                            'image/depression.jpg',
                            height: 250,
                            width: 380,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                          child: Text(
                            'Depression',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 340, 20, 32),
                          child: Text(
                            'Depression is a serious condition that negatively affects...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
