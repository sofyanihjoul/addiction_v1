import 'package:addiction_app_v1/views/Confirom_view.dart';
import 'package:addiction_app_v1/views/Home_page_view.dart';
import 'package:addiction_app_v1/views/Log_in_view.dart';
import 'package:addiction_app_v1/views/Question_Answer_view.dart';
import 'package:addiction_app_v1/views/guest_view.dart';
import 'package:addiction_app_v1/views/Welcome.dart';
import 'package:addiction_app_v1/views/change_Your_think_view.dart';
import 'package:addiction_app_v1/views/sign_up_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //final w = MediaQuery.of(context).size.width;

    return MaterialApp(home: Welcomepage());
  }
}
