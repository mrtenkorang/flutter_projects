import 'package:flutter/material.dart';

class GetTopUpText extends StatelessWidget {
  const GetTopUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(left: 30.0,right: 20.0),
        child: Text(
          'Add amount to your account to make purchases',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
            color: Color.fromRGBO(141, 145, 150, 1),
          ),
        ),
      ),
    );
  }
}
