// ignore_for_file: must_be_immutable, camel_case_types

import 'package:bmi_calculator/iconContent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const inactiveCardColor = Color(0xff111428);
const activeCardColor = Color(0xff1d1f33);
const bottomContainerColor = Color(0xffeb1555);


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender){
    if(gender == 1)
      {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    else
      {
        maleCardColor = inactiveCardColor;
      }
    if(gender == 2)
    {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    }
    else
    {
      femaleCardColor = inactiveCardColor;
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: reusableCard(
                      clr: maleCardColor,
                      cardChild: iconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: reusableCard(
                      clr: femaleCardColor,
                      cardChild: iconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              clr: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    clr: activeCardColor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    clr: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

