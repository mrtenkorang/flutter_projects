import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        title: Row(
          children: const [
            Text(
              'TransPay',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat'
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      body: Column(
        children: [],
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
