import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  GetButton(
      {required this.color, required this.buttonText, required this.textColor});

  final color;
  final textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: color,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
