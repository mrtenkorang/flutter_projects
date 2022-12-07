import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';
import 'package:safe_journey/accounts/registration_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static String homeId = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'SJ',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w300,
                  fontSize: 30.0),
            ),
            const SizedBox(
              width: 160.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.loginId);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.registerId);
              },
              child: const Text(
                'Register',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(7, 8, 89, 1),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
