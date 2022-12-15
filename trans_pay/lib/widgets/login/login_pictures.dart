import 'package:carousel_pro/carousel_pro.dart';
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
        child: Carousel(
          dotSize: 5.0,
          dotSpacing: 15.0,
          dotBgColor: const Color.fromRGBO(249, 239, 229, 1),
          images: [
            SvgPicture.asset(
              'images/authentication.svg',
            ),
            SvgPicture.asset(
              'images/web-security.svg',
            ),
            SvgPicture.asset(
                'images/girlPayment.svg'
            ),
          ],
        ),
      ),
    );
  }
}
