import 'package:examfluttercore/HomePage.dart';
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
      routes: {
        "/": (context)=>Homepage(),
      },
    );
  }
}
