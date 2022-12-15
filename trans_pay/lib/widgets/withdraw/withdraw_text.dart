import 'package:flutter/material.dart';

class GetWithdrawText extends StatelessWidget {
  const GetWithdrawText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Withdraw to:\n\n1. Mobile wallet\n2. Bank',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20,
          color: Color.fromRGBO(141, 145, 150, 1),
        ),
      ),
    );
  }
}