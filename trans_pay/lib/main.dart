import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trans_pay/screens/home_screen.dart';
import 'package:trans_pay/screens/init_screen.dart';
import 'package:trans_pay/screens/login_screen.dart';
import 'package:trans_pay/screens/send_screen.dart';
import 'package:trans_pay/screens/signup_screen.dart';
import 'package:trans_pay/screens/topup_screen.dart';
import 'package:trans_pay/screens/withdraw_screen.dart';
import 'Model classes/providers/username.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>GetUsername())
      ],
      child: const Trans(),
    ),
  );
}

class Trans extends StatelessWidget {
  const Trans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
