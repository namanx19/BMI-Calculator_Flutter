import 'package:flutter/material.dart';
class reusableCard extends StatelessWidget {
  reusableCard({required this.clr, this.cardChild, this.onPress, Key? key}) : super(key: key);
  final Color clr;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: cardChild,
      ),
    );
  }
}
