import 'package:flutter/material.dart';
import 'package:ok/detail_screen.dart';
import 'main_page.dart';
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF7F7FD5), Color(0xFF86A8E7), Color(0xFF91EAE4)],
    ).createShader(Rect.fromLTWH(0, 0.0, 200.0, 70.0));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
                subtitle1: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
            subtitle2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )),
      ),
      home: Next(),
      routes: {Details_Screen.routeName: (context) => Details_Screen()},
    );
  }
}
