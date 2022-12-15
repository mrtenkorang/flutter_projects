import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetSignUpPictures extends StatelessWidget {
  const GetSignUpPictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
