import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetAdvertContainer extends StatelessWidget {
  const GetAdvertContainer(
      {super.key,
      required this.topInfo,
      required this.color,
      required this.bottomInfo});

  final String topInfo;
  final String bottomInfo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      width: 600.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    topInfo,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Summer special deal',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    bottomInfo,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: SvgPicture.asset(
              'images/girlShop.svg',
            ),
          ),
        ],
      ),
    );
  }
}
