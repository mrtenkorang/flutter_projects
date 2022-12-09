import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static String signupId = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 350.0,
              height: 400.0,
              child: Carousel(
                dotSize: 5.0,
                dotSpacing: 15.0,
                dotBgColor: const Color.fromRGBO(249, 239, 229, 1),
                images: [
                  SvgPicture.asset(
                    'images/signup.svg',
                  ),
                  SvgPicture.asset(
                    'images/emergency-funds.svg',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(248, 248, 248, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Center(
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Login',
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 50.0,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                          TypewriterAnimatedText(
                            'to',
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 50.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          TypewriterAnimatedText(
                            'trans',
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 50.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          TypewriterAnimatedText(
                            'your',
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 50.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          TypewriterAnimatedText(
                            'payments',
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 50.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
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
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                          )
                      ),
                    ),
                  ),
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
                          'Signup',
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
    );
  }
}
