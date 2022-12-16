import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/constants.dart';
import '../widgets/login/carousel_text.dart';
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
