import 'package:flutter/material.dart';
import 'package:my_first_app/RandomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Geneartor',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: RandomWords(),
    );
  }
}
