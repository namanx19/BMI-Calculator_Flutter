import 'package:flutter/material.dart';
import '../constants.dart';
class bottomButton extends StatelessWidget {
  const bottomButton ({required this.onTap, required this.buttonLabel, Key? key}) : super(key : key);

  final VoidCallback onTap;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // onTap: (){
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //         builder: (context) => const resultPage()
      //     ),
      //   );
      // },
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonLabel,
            style: kRedButtonStyle,
          ),
        ),
      ),
    );
  }
}