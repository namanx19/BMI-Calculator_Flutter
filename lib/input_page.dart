// ignore_for_file: must_be_immutable, camel_case_types
import 'package:bmi_calculator/iconContent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'constants.dart';

enum gender {
  male,
  female,
}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    clr: selectedGender == gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: iconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    clr: selectedGender == gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: iconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              clr: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                          height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                          ' cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 0.5,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: const Color(0xffeb1555),
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 25.0),
                      overlayColor: const Color(0x29eb1555)
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight.toDouble(),
                        max: kMaxHeight.toDouble(),
                        // activeColor: const Color(0xffeb1555),
                        // inactiveColor: const Color(0xff8d8e98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    clr: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    clr: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

