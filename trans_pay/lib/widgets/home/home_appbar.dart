import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.1,
      backgroundColor: kHomeAppBarBackgroundColor,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.1, left: 5),
            child: SvgPicture.asset(
              'images/online-payment.svg',
              height: 28.0,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: AnimatedTextKit(
              repeatForever: false,
              animatedTexts: [
                TypewriterAnimatedText('TransPay',
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 20.0,
                      fontFamily: 'Montserrat-ExtraBold',
                    ),
                    speed: const Duration(milliseconds: 500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

