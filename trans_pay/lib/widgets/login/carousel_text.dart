import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GetCarouselText extends StatelessWidget {
  const GetCarouselText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

