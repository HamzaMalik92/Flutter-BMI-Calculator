import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

// ignore: camel_case_types
class iconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  iconContent(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: lableTextStyle,
        )
      ],
    );
  }
}
