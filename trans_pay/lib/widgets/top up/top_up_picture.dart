import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetTopUpPicture extends StatelessWidget {
  const GetTopUpPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'images/cash-flow.svg',
      height: 300.0,
    );
  }
}