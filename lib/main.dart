import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/create_page.dart';
import 'package:flutter_application_1/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: create_page(),
    );
  }
}
