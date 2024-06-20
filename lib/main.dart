import 'package:examfluttercore/DetailPage.dart';
import 'package:examfluttercore/HomePage.dart';
import 'package:examfluttercore/UpdateScreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(ExamApp());
}
class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=>Homepage(),
        "/de":(context)=>Detailpage(),
        "/up":(context)=>Updatescreen(),
      },
    );
  }
}
