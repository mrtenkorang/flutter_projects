import 'package:flutter/material.dart';

class GetTopUpTextFiled extends StatelessWidget {
  const GetTopUpTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
          left: 20.0, right: 20.0, top: 20.0),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
    );
  }
}

