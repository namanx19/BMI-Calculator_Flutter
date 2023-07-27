// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'input_page.dart';
void main(){
  runApp(const bmiCalculator());
}

class bmiCalculator extends StatelessWidget {
  const bmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            color: Color(0xff0a0d22),
          ),
          scaffoldBackgroundColor: const Color(0xff0A0D22)
      ),
      home: const InputPage(),
    );
  }
}


