import 'package:addiction_app_v1/COMMON/constants.dart';
import 'package:addiction_app_v1/views/Home_page_view.dart';
import 'package:addiction_app_v1/views/change_Your_think_view.dart';
import 'package:addiction_app_v1/views/get_reward_view.dart';
import 'package:addiction_app_v1/views/posts_view.dart';
import 'package:addiction_app_v1/views/profile_Dr_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drwertest extends StatefulWidget {
  const Drwertest({super.key});

  @override
  State<Drwertest> createState() => _DrwertestState();
}

class _DrwertestState extends State<Drwertest> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff245865).withOpacity(0.695),
      ),
      drawer: MyDarwer(),
    );
  }
}

class MyDarwer extends StatefulWidget {
  const MyDarwer({super.key});

  @override
  State<MyDarwer> createState() => _MyDarwerState();
}

class _MyDarwerState extends State<MyDarwer> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Drawer(
      width: w / 2,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(" "),
            accountEmail: Text(""),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const cardspage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => profilDrPage(
                          userID: StaticValues.userId,
                          isDoctor: false,
                        )),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.post_add),
            title: Text("post"),
            onTap: () {
              //PostsView
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostsView()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.wallet_giftcard_sharp),
            title: Text("Get Rewards"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => getreward()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.check_rounded),
            title: Text("Your Missions"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.psychology),
            title: Text("Change Your Think"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const changeyourthink()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Appmenu extends StatefulWidget {
  const Appmenu({super.key});

  @override
  State<Appmenu> createState() => _AppmenuState();
}

class _AppmenuState extends State<Appmenu> {
  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
