import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  static String registerId = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 200.0,
            child: Image.asset('images/bus.png'),
          ),
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              hintText: 'Enter your email',
              hintStyle: TextStyle(color: Colors.lightBlueAccent),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              hintText: 'Enter you username',
              hintStyle: TextStyle(color: Colors.lightBlueAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: Colors.lightBlueAccent,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Quicksand',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.loginId);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
