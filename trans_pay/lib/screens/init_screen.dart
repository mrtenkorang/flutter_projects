import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  static String initId = 'init';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.10,
          backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 60),
                child: SvgPicture.asset(
                  'images/online-payment.svg',
                  height: 38.0,
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'TransPay',
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 40.0,
                        fontFamily: 'Montserrat',
                      ),
                      speed: const Duration(milliseconds: 500)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
        body: Column(
          children: [
            SizedBox(
              height: 300.0,
              child: Carousel(
                dotSize: 5.0,
                dotSpacing: 15.0,
                dotBgColor: const Color.fromRGBO(249, 239, 229, 1),
                images: [
                  SvgPicture.asset(
                    'images/discussion.svg',
                    alignment: Alignment.topCenter,
                    height: 200.0,
                  ),
                  SvgPicture.asset(
                    'images/girlAndPhone.svg',
                    alignment: Alignment.topCenter,
                    height: 200.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(248, 248, 248, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: Text(
                          'Trans online payment',
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 35.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Center(
                      child: Text(
                        'Make your online payment experience better \n with no extra admin fee',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: Color.fromRGBO(208, 209, 212, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color: const Color.fromRGBO(248, 248, 248, 1),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
