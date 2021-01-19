import 'package:flutter/material.dart';
import 'package:sacoffe/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaCoffe application',
      color: Color(0xFFE4B374),
      home: FirstScreen(),
    );
  }
}