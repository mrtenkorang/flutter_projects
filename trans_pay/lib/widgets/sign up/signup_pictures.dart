import 'package:carousel_slider/carousel_slider.dart';
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
      height: 350.0,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: 200
        ),
        items: [
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
