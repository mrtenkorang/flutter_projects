import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';
import 'accounts/login_page.dart';
import 'accounts/registration_page.dart';

void main() {
  runApp(const SafeJourney());
}


class SafeJourney extends StatelessWidget {
  const SafeJourney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.loginId,
      routes: {
        LoginScreen.loginId: (context)=>LoginScreen(),
        SignUpScreen.registerId: (context)=>SignUpScreen(),
      },
    );
  }
}

