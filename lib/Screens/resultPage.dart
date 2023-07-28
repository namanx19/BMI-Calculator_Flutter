// ignore_for_file: camel_case_types

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusableCard.dart';
import 'package:flutter/material.dart';
import '../Components/bottomButton.dart';

class resultPage extends StatelessWidget {
  const resultPage({required this.bmiResult, required this.resultText, required this.recommendation, Key? key}) : super(key:key);

  final String? bmiResult;
  final String resultText;
  final String recommendation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.bottomLeft,
            child: const Expanded(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kResultStyle,
                  ),
                ),
            ),
          ),
          Expanded(
              flex: 5,
              child: reusableCard(
                clr: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult!,
                      style: kBMITextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        recommendation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          bottomButton(
              onTap: (){
                Navigator.pop (context);
              },
              buttonLabel: 'RE-CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}
