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
          children: const [
            GetBalance(),
            kHomeSizedBox,
            GetActivities(),
            kHomeSizedBox,
            GetServices(),
            kHomeSizedBox,
            GetAdvertContainer(),
            kHomeSizedBox,
            GetRecentTransactionTags(),
            kHomeSizedBox,
            GetRecentTransaction(),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}

