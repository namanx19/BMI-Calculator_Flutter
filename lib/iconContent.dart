import 'package:flutter/material.dart';
class iconContent extends StatelessWidget {
  iconContent({required this.icon, required this.label, Key? key}) : super(key: key);
  final IconData icon;
  final String label;

  static const labelTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(0xff8d8e98) ,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}

