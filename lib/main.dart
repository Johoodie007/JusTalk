import 'package:flutter/material.dart';

import 'package:flutter_app/pages/splash.dart';

//import 'package:flutter_app/pages/mes.dart'; currently on development and testing


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Just Talk',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
       // body: Mes(),
        body: Splash(),
      ),
    );

  }
}
