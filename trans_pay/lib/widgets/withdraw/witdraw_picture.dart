import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetWithdrawPicture extends StatelessWidget {
  const GetWithdrawPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'images/withdraw.svg',
      height: 250.0,
    );
  }
}