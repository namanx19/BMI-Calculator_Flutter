// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'reusableCard.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    clr: const Color(0xff1D1F33),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    clr: const Color(0xff1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              clr: const Color(0xff111428),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    clr: const Color(0xff111428),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    clr: const Color(0xff111428),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffeb1555),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 75.0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

