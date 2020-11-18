import 'package:flutter/material.dart';
import 'package:aptworkforce/exports.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apt WorkForce',
        theme: ThemeData(
//          primarySwatch: Colors.blue,
          primaryColor: Color(0XFF7d0552), cursorColor: Color(0XFF7d0552),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LogInScreen());
  }
}
