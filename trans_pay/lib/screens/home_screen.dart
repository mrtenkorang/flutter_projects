import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/home/activity.dart';
import '../widgets/home/advert_container.dart';
import '../widgets/home/balance_area.dart';
import '../widgets/home/home_appbar.dart';
import '../widgets/home/home_bottom_widget.dart';
import '../widgets/home/recent_transaction.dart';
import '../widgets/home/services.dart';
import '../widgets/home/transaction_tags.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String homeId = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: kHomeBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const GetBalance(),
            kHomeSizedBox,
            const GetActivities(),
            kHomeSizedBox,
            const GetServices(),
            kHomeSizedBox,
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 145.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                initialPage: 0,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: const Duration(seconds: 5),
                enlargeFactor:0.3
              ),
              items: const [
                GetAdvertContainer(
                  topInfo: '50% OFF',
                  color: Color.fromRGBO(252, 179, 197, 1),
                  bottomInfo: 'Pay less for every transaction',
                ),
                GetAdvertContainer(
                  topInfo: '20% OFF',
                  color: Color.fromRGBO(65, 161, 217, 1),
                  bottomInfo: '',
                ),
                GetAdvertContainer(
                  topInfo: '40% OFF',
                  color: Color.fromRGBO(59, 183, 94, 1),
                  bottomInfo: '',
                ),
              ],
            ),
            kHomeSizedBox,
            const GetRecentTransactionTags(),
            kHomeSizedBox,
            const GetRecentTransaction(),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
