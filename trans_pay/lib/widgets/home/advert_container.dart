import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetAdvertContainer extends StatelessWidget {
  const GetAdvertContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 140.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(252, 179, 197, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Row(
          children: [
            Column(
              children: const [
                Text(
                  '50% OFF',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                Text(
                  'Summer special deal',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Get discount for every\ntransaction',
                ),
              ],
            ),
            Flexible(
              child: SvgPicture.asset(
                'images/girlShop.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

