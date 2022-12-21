import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trans_pay/screens/home_screen.dart';

import '../../Model classes/loginAndSignup/login_and_signup.dart';
import '../../utilities/constants.dart';

class GetLoginTextFields extends StatefulWidget{
  GetLoginTextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<GetLoginTextFields> createState() => _GetLoginTextFieldsState();
}

class _GetLoginTextFieldsState extends State<GetLoginTextFields> {
  final _auth = FirebaseAuth.instance;

  late String email;

  late String password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextField(
            textAlign: TextAlign.center,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
              hintText: 'Email',
              hintStyle: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
            onChanged: (inputValue) {
              email = inputValue;
            },
          ),
        ),
        kLoginSizedBox,
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
        kLoginSizedBox,
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: SizedBox(
            height: 60.0,
            width: 400.0,
            child: MaterialButton(
              elevation: 20.0,
              color: const Color.fromRGBO(0, 0, 0, 1),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    fontSize: 20.0,
                    fontFamily: 'Montserrat'),
              ),
              onPressed: () async {
                LoginAndSignUpController login =
                    LoginAndSignUpController(email: email, password: password);
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
                login.login();
                Navigator.pop(context);
                Navigator.pushNamed(context, HomeScreen.homeId);
              },
            ),
          ),
        ),
      ],
    );
  }
}
