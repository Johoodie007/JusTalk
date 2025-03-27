import 'package:flutter/material.dart';
//import 'package:flutter_app/pages/Doc_Profile_Page.dart';
import 'package:flutter_app/pages/splash.dart';

//import 'package:flutter_app/pages/mes.dart'; currently on development and testing


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //final String doctorId = '4edddd';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Just Talk',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(


       //body: DoctorProfilePage(doctorId: doctorId),
      body: Splash(),
      ),
    );

  }
}
