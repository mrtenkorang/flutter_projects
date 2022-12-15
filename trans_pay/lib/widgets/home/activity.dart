import 'package:flutter/material.dart';

import '../../screens/send_screen.dart';
import '../../screens/topup_screen.dart';
import '../../screens/withdraw_screen.dart';

class GetActivities extends StatelessWidget {
  const GetActivities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 80.0,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                //TODO: Update to use named routes
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TopUpScreen();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      minRadius: 10.0,
                      child: Icon(
                        (Icons.add),
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'top-up',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat,'),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //TODO: Update to use named routes
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendScreen();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 70.0, top: 10.0),
                child: Column(
                  children: const [
                    Icon(
                      (Icons.send_to_mobile_rounded),
                      color: Colors.white,
                    ),
                    Text(
                      'send',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //TODO: Update to use named routes
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WithdrawScreen();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 70.0, top: 10.0),
                child: Column(
                  children: const [
                    Icon(
                      (Icons.add),
                      color: Colors.white,
                    ),
                    Text(
                      'withdraw',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

