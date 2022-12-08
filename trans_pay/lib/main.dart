import 'package:flutter/material.dart';
import 'package:trans_pay/screens/init_screen.dart';
import 'package:trans_pay/screens/login_screen.dart';

void main() {
  runApp(const Trans());
}

class Trans extends StatelessWidget {
  const Trans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
