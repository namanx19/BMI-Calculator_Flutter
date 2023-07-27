import 'package:flutter/material.dart';
class reusableCard extends StatelessWidget {
  reusableCard({required this.clr, this.cardChild, Key? key}) : super(key: key);
  Color clr;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: cardChild,
    );
  }
}
