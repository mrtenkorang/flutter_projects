import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trans_pay/screens/init_screen.dart';

import '../../utilities/constants.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.1,
      backgroundColor: kHomeAppBarBackgroundColor,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.1, left: 5),
            child: SvgPicture.asset(
              'images/online-payment.svg',
              height: 28.0,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              'TransPay',
              style: TextStyle(
                fontFamily: 'Montserrat-ExtraBold',
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 150.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            ),
            child: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
            onPressed: () async {
              await _auth.signOut();
              if(!mounted)return;
              Navigator.pushNamed(context, InitScreen.initId);
            },
          ),
        ],
      ),
    );
  }
}
