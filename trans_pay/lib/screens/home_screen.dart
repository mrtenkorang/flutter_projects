import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
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
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('TransPay',
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                      ),
                      speed: const Duration(milliseconds: 500)),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 305.0),
            child: Text(
              'Hi, Samantha',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Montserrat',
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          Row(
            children: const [
              Text(
                'Your current balance',
                style: TextStyle(
                  color: Color.fromRGBO(141, 145, 150, 1),
                ),
              ),
              SizedBox(
                width: 140.0,
              ),
              Text(
                'GHC 500',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20.0,
                    fontFamily: 'Montserrat'),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Row(
                children:  [
                  TextButton(
                    onPressed: () {  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Column(
                        children: const [
                          Icon(
                            (Icons.add),
                            color: Colors.white,
                          ),
                          Text(
                            'top-up',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat,'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
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
                              fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, top: 10.0),
                      child: Column(
                        children: const [
                          Icon(
                            (Icons.add),
                            color: Colors.white,
                          ),
                          Text(
                            'hello',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
          Container(
            color: const Color.fromRGBO(0, 0, 0, 1),
            height: 160.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_edu),
            label: 'history',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
