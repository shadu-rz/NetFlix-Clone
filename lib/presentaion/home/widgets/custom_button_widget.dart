import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.text,
      this.iconsize = 30,
      this.fontsize = 15});

  final IconData icon;
  final String text;
  final double iconsize;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: whitecolor,
          size: iconsize,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
          ),
        )
      ],
    );
  }
}
