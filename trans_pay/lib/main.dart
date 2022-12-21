import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trans_pay/screens/Invest/invest_init_page.dart';
import 'package:trans_pay/screens/Rent/house_owner.dart';
import 'package:trans_pay/screens/home_screen.dart';
import 'package:trans_pay/screens/init_screen.dart';
import 'package:trans_pay/screens/login_screen.dart';
import 'package:trans_pay/screens/send_screen.dart';
import 'package:trans_pay/screens/signup_screen.dart';
import 'package:trans_pay/screens/topup_screen.dart';
import 'package:trans_pay/screens/withdraw_screen.dart';
import 'package:trans_pay/widgets/login/login_text_field.dart';
import 'Model classes/providers/username.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const Trans(),
  );
}

class Trans extends StatelessWidget {
  const Trans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: InitScreen.initId,

      routes: {
        HomeScreen.homeId: (context)=>const HomeScreen(),
        InitScreen.initId:(context)=> const InitScreen(),
        LoginScreen.loginId:(context)=> const LoginScreen(),
        SignupScreen.signupId: (context)=> const SignupScreen(),
        SendScreen.sendId: (context)=>  const SendScreen(),
        TopUpScreen.topUpId: (context) => const TopUpScreen(),
        WithdrawScreen.withdrawId: (context)=>const WithdrawScreen(),
        HouseOwner.houseOwnerId: (context)=> const HouseOwner(),
        InvestInitScreen.investInitId: (context)=> const InvestInitScreen(),
      },
    );
  }
}
