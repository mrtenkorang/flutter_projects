import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trans_pay/screens/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                repeatForever: false,
                animatedTexts: [
                  TypewriterAnimatedText('TransPay',
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20.0,
                        fontFamily: 'Montserrat-ExtraBold',
                      ),
                      speed: const Duration(milliseconds: 500)),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 305.0),
              child: Text(
                'Hi, Samantha',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat-ExtraBold',
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
                        //TODO: take user to the top up page
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
                        //TODO: take user to the send page
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
                        //TODO: take user to the withdraw page
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 160.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // TODO: take user to the internet page
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(Icons.add),
                                      Text(
                                        'Internet',
                                        style:
                                            TextStyle(fontFamily: 'Montserrat'),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 80.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //TODO: take user to the water page
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(Icons.add),
                                      Text(
                                        'Water',
                                        style:
                                            TextStyle(fontFamily: 'Montserrat'),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 70.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    //TODO: take user to the electricity page
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(Icons.add),
                                      Text(
                                        'Electricity',
                                        style:
                                            TextStyle(fontFamily: 'Montserrat'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 13.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // TODO: take user to the internet page
                                    },
                                    child: Column(
                                      children: const [
                                        Icon(Icons.add),
                                        Text(
                                          'Rent',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 94.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //TODO: take user to the water page
                                    },
                                    child: Column(
                                      children: const [
                                        Icon(Icons.add),
                                        Text(
                                          'Invest',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 87.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //TODO: take user to the electricity page
                                    },
                                    child: Column(
                                      children: const [
                                        Icon(Icons.add),
                                        Text(
                                          'More',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 140.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(252, 179, 197, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                constraints: const BoxConstraints(maxWidth: 400),
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Recent Transactions',
                    style: TextStyle(
                        fontFamily: 'Montserrat-ExtraBold', fontSize: 20.0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //TODO: show all completed or failed transactions
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 110.0),
                    child: Text(
                      'SEE ALL',
                      style:
                          TextStyle(fontSize: 15.0, fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 8.0, left: 20.0, right: 20.0),
              child: Container(
                height: 90.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 50.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 80.0),
                            child: Text(
                              'David',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color.fromRGBO(141, 145, 150, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'February 24,2022',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(141, 145, 150, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50.0, top: 20.0),
                          child: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0, top: 5.0),
                          child: Text(
                            'GHC 200',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
