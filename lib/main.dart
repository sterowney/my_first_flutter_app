import 'package:flutter/material.dart';
import 'package:my_first_app/random_words.dart';

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
