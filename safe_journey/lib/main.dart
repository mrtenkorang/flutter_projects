import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:safe_journey/accounts/login_page.dart';
import 'package:safe_journey/screens/home.dart';
import 'accounts/registration_page.dart';
import 'firebase_options.dart';
import 'screens/home.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const SafeJourney());
}


class SafeJourney extends StatelessWidget {
  const SafeJourney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.homeId,
      routes: {
        LoginScreen.loginId: (context)=>LoginScreen(),
        SignUpScreen.registerId: (context)=>SignUpScreen(),
        HomeScreen.homeId: (context)=>HomeScreen(),
      },
    );
  }
}

