import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  static String registerId = 'register';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;

  late final String email;

  late final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'Quicksand',
                  color: Color.fromRGBO(7, 8, 89, 1),
                ),
              ),
            ),
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
                hintStyle: TextStyle(
                  color: Color.fromRGBO(7, 8, 89, 1),
                ),
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
                hintText: 'Enter you password',
                hintStyle: TextStyle(color: Color.fromRGBO(7, 8, 89, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: const Color.fromRGBO(7, 8, 89, 1),
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
                  onPressed: () async {
                    Navigator.pushNamed(context, LoginScreen.loginId);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20.0,
                      color: Color.fromRGBO(7, 8, 89, 1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
