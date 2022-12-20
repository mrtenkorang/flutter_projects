import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetLoginPictures extends StatelessWidget {
  const GetLoginPictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.0,
        height: 400.0,
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true, height: 220, enlargeCenterPage: true),
          items: [
            SvgPicture.asset(
              'images/authentication.svg',
            ),
            SvgPicture.asset(
              'images/web-security.svg',
            ),
            SvgPicture.asset('images/girlPayment.svg'),
          ],
        ),
      ),
    );
  }
}
