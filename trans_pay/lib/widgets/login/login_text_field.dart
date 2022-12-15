import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class GetLoginTextFields extends StatelessWidget {
  const GetLoginTextFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                )
            ),
          ),
        ),
        kLoginSizedBox,
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  )
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

