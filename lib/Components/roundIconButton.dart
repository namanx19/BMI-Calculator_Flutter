import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPressed, Key? key}) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      child: Icon(icon),
    );
  }
}