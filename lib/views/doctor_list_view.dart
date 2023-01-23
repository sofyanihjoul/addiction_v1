import 'package:addiction_app_v1/views/my_Darwer_view.dart';
import 'package:addiction_app_v1/views/profile_Dr_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../COMMON/loader.dart';
import '../api/user_api.dart';

class doctorlist extends StatefulWidget {
  const doctorlist({super.key});

  @override
  State<doctorlist> createState() => _doctorlistState();
}

class _doctorlistState extends State<doctorlist> {
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
