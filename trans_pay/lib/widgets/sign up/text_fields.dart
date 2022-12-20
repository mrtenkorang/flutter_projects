import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trans_pay/screens/home_screen.dart';
import 'package:trans_pay/screens/login_screen.dart';

import '../../Model classes/loginAndSignup/login_and_signup.dart';
import '../../Model classes/providers/username.dart';
import '../../utilities/constants.dart';

class GetSignUpTextField extends StatefulWidget {
  const GetSignUpTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<GetSignUpTextField> createState() => _GetSignUpTextFieldState();
}

class _GetSignUpTextFieldState extends State<GetSignUpTextField> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                hintText: 'username',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                )),
            onChanged: (inputValue) {
              username = inputValue;
            },
          ),
        ),
        kSignUpSizedBox,
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                )),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                )),
            onChanged: (inputValue) {
              email = inputValue;
            },
          ),
        ),
        kSignUpSizedBox,
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
              hintText: 'Password',
              hintStyle: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
            onChanged: (inputValue) {
              password = inputValue;
            },
          ),
        ),
        kSignUpSizedBox,
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: SizedBox(
            height: 60.0,
            width: 400.0,
            child: MaterialButton(
              elevation: 20.0,
              color: const Color.fromRGBO(0, 0, 0, 1),
              child: const Text(
                'Signup',
                style: TextStyle(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    fontSize: 20.0,
                    fontFamily: 'Montserrat'),
              ),
              onPressed: () async {

                LoginAndSignUpController signup = LoginAndSignUpController
                  (email: email, password: email);

                showDialog(
                  context: context,
                  builder: (context) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
                signup.signup();
                Navigator.pop(context);
                if (!mounted) return;
                Navigator.pushNamed(context, LoginScreen.loginId);
              },
            ),
          ),
        )
      ],
    );
  }
}
