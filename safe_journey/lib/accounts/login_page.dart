import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:safe_journey/accounts/registration_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  static String loginId = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                'LOGIN',
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
                hintText: 'Enter you username',
                hintStyle: TextStyle(color: Color.fromRGBO(7, 8, 89, 1)),
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
                  onPressed: () async{
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      // create a new user using firebase classes
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      // check if the user is not null
                      if (!mounted) return;
                      Navigator.of(context).pushNamed(LoginScreen.loginId);
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Text(
                    'Login',
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
                  'Need an Account?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Quicksand',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreen.registerId);
                  },
                  child: const Text(
                    'Create One',
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
