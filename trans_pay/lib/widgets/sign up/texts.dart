import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class GetSignUpTexts extends StatelessWidget {
  const GetSignUpTexts({
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
              'Sign up',
              textStyle: kSignUpTextStyle,
            ),
            TypewriterAnimatedText(
              'to',
              textStyle: kSignUpTextStyle,
            ),
            TypewriterAnimatedText(
              'trans',
              textStyle: kSignUpTextStyle,
            ),
            TypewriterAnimatedText(
              'your',
              textStyle: kSignUpTextStyle,
            ),
            TypewriterAnimatedText(
              'payments',
              textStyle: kSignUpTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
