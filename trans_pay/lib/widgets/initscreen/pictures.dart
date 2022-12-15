import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetPictures extends StatelessWidget {
  const GetPictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

