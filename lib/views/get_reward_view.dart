import 'package:addiction_app_v1/views/my_Darwer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class getreward extends StatefulWidget {
  const getreward({super.key});

  @override
  State<getreward> createState() => _getrewardState();
}

class _getrewardState extends State<getreward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff245865).withOpacity(0.695),
      ),
      //MENU BAR
      drawer: const MyDarwer(),
      body: SingleChildScrollView(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //card 1
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
                        'Most faviorits ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                      ),
                    )),
              ),
            ),

            SizedBox(
              child: Card(
                color: Color(0xffA3BCC0).withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const SizedBox(
                    width: 152,
                    height: 229,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Newest ',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
