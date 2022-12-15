import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/constants.dart';
import '../widgets/top up/text_field.dart';
import '../widgets/top up/top_info.dart';
import '../widgets/top up/top_up_button.dart';
import '../widgets/top up/top_up_picture.dart';
import '../widgets/top up/top_up_text.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  State<TopUpScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<TopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kTopUp1stContainerDecoration,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const GetBackIconAndTopUpText(),
                  const GetTopUpPicture(),
                  kTopUpSizedBox,
                  Expanded(
                    child: Container(
                      decoration: kTopUp2ndContainerDecoration,
                      child: Column(
                        children: const [
                          GetTopUpTextFiled(),
                          kTopUpSizedBox,
                          GetTopUpText(),
                          kTopUpSizedBox,
                          GetTopUpButton(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



