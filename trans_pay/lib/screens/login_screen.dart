import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/login/animated_text.dart';
import '../widgets/login/login_pictures.dart';
import '../widgets/login/login_text_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String loginId = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLoginScaffoldBackgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const GetLoginPictures(),
              Expanded(
                child: Container(
                  height: kLoginAndSignupContainerHeight,
                  decoration: kLoginContainerDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      GetCarouselText(),
                      kLoginSizedBox,
                      GetLoginTextFields(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
