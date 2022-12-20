import 'package:flutter/material.dart';
import 'package:trans_pay/screens/login_screen.dart';

import '../../screens/signup_screen.dart';
import '../../utilities/constants.dart';

class GetInitButtons extends StatelessWidget {
  const GetInitButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: SizedBox(
            height: 60.0,
            child: MaterialButton(
              elevation: 10.0,
              onPressed: () => Navigator.pushNamed(context, LoginScreen.loginId),
              color: const Color.fromRGBO(0, 0, 0, 1),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ),
        kInitSizedBox,
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: SizedBox(
            height: 60.0,
            child: MaterialButton(
              elevation: 10.0,
              onPressed: () => Navigator.pushNamed(context, SignupScreen.signupId),
              color: const Color.fromRGBO(248, 248, 248, 1),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
