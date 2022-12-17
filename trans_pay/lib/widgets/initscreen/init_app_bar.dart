import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class GetInitAppBar extends StatelessWidget implements PreferredSizeWidget{
  const GetInitAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.10,
      backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 40),
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
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
