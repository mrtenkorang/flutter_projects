import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/login/carousel_text.dart';
import '../widgets/login/login_pictures.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String loginId = 'login';
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
              const GetLoginPictures(),
              Expanded(
                child: Container(
                  height: 300.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 248, 248, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const GetCarouselText(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const GetLoginTextField(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              )
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: SizedBox(
                          height: 60.0,
                          child: MaterialButton(
                            elevation: 20.0,
                            onPressed: () {},
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  fontSize: 20.0,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
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

