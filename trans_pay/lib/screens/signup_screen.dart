import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/constants.dart';
import '../widgets/sign up/signup_pictures.dart';
import '../widgets/sign up/text_fields.dart';
import '../widgets/sign up/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static String signupId = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Center(
                child: GetSignUpPictures(),
              ),
              Expanded(
                child: Container(
                  height: kLoginAndSignupContainerHeight,
                  decoration: kSignUpContainerDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      GetSignUpTexts(),
                      kSignUpSizedBox,
                      GetSignUpTextField(),
                      kSignUpSizedBox,
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

