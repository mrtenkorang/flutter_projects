import 'package:flutter/material.dart';

class GetInitPageText extends StatelessWidget {
  const GetInitPageText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'Trans online payment',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 35.0),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Center(
          child: Text(
            'Make your online payment experience better \n with no extra admin fee',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              color: Color.fromRGBO(208, 209, 212, 1),
            ),
          ),
        ),
      ],
    );
  }
}

