import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';
import 'package:safe_journey/accounts/registration_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
      backgroundColor: Colors.white,
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
                    fontSize: 20.0),
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
                    fontSize: 20.0),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(7, 8, 89, 1),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Welcome',
                textStyle: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0),
              ),
              TypewriterAnimatedText(
                'To',
                textStyle: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0),
              ),
              TypewriterAnimatedText(
                'Safe Travel',
                textStyle: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0),
              ),
            ],
          ),
          SizedBox(
            height: 170.0,
            child: Image.asset('images/bus.png'),
          ),
          const Text(
            'What is the location?',
            style: TextStyle(
              color: Color.fromRGBO(7, 8, 89, 1),
              fontSize: 30.0,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Container(
              height: 30.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(7, 8, 89, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
