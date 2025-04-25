import 'package:flutter/material.dart';
import 'main_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY APP',
      home: MainHomePage(),
    );
  }
}
