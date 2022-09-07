import 'package:exercise_input_widget/checkbox_screen.dart';
import 'package:exercise_input_widget/exercise_texfield_screen.dart';
import 'package:flutter/material.dart';

import 'exercise_radio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CheckBoxScreen(),
    );
  }
}