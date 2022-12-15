import 'package:flutter/material.dart';

class SendDescriptiveText extends StatelessWidget {
  const SendDescriptiveText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Send money to your loved ones,\n make them feel loved',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20,
          color: Color.fromRGBO(141, 145, 150, 1),
        ),
      ),
    );
  }
}
