import 'package:flutter/material.dart';

class SendTextField extends StatelessWidget {
  const SendTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
      EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
