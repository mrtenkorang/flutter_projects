import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GetPictures extends StatelessWidget {
  const GetPictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: 200
        ),
        items: [
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
    );
  }
}
