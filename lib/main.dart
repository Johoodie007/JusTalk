import 'package:flutter/material.dart';

import 'package:flutter_app/pages/doc.dart';
import 'package:flutter_app/pages/get_started.dart';
import 'package:flutter_app/pages/log_in.dart';
import 'package:flutter_app/pages/main_page.dart';
import 'package:flutter_app/pages/mes.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/splash.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

        body: Doc(),
        // body: GetStarted(),
        // body: LogIn(),
        // body: MainPage(),
        // body: Mes(),
        // body: SignUp(),
        // body: Splash(),

      ),
    );
  }
}
