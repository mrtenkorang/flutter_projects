import 'package:flutter/material.dart';

class GetWithdrawButton extends StatelessWidget {
  const GetWithdrawButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 30.0, right: 30.0),
      child: SizedBox(
        height: 60.0,
        width: 400.0,
        child: MaterialButton(
          elevation: 20.0,
          onPressed: () {},
          color: const Color.fromRGBO(0, 0, 0, 1),
          child: const Text(
            'Withdraw',
            style: TextStyle(
                color: Color.fromRGBO(248, 248, 248, 1),
                fontSize: 20.0,
                fontFamily: 'Montserrat'),
          ),
        ),
      ),
    );
  }
}
