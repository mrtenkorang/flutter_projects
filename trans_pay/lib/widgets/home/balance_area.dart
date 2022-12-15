import 'package:flutter/material.dart';

class GetBalance extends StatelessWidget {
  const GetBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 305.0),
          child: Text(
            'Hi, Samantha',
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Montserrat-ExtraBold',
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        Row(
          children: const [
            Text(
              'Your current balance',
              style: TextStyle(
                color: Color.fromRGBO(141, 145, 150, 1),
              ),
            ),
            SizedBox(
              width: 140.0,
            ),
            Text(
              'GHC 500',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20.0,
                  fontFamily: 'Montserrat'),
            ),
          ],
        ),
      ],
    );
  }
}

