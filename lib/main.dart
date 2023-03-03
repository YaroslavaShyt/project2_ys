import 'package:flutter/material.dart';
import 'main_page.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LearnyCom',
      theme: ThemeData(fontFamily: 'Jost'),
      home:  MainPage(title: 'Learn'),
    );
  }
}
