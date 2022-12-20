import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/withdraw/text_field.dart';
import '../widgets/withdraw/top_info.dart';
import '../widgets/withdraw/witdraw_picture.dart';
import '../widgets/withdraw/withdraw_button.dart';
import '../widgets/withdraw/withdraw_text.dart';


class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  static String withdrawId = 'withdraw';

  @override
  State<WithdrawScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kWithdraw1stContainerDecoration,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const GetBackAndWithdrawText(),
                  const GetWithdrawPicture(),
                  kWithdrawSizedBox,
                  Expanded(
                    child: Container(
                      decoration: kWithdraw2ndContainerDecoration,
                      child: Column(
                        children: const [
                          GetWithdrawTextField(),
                          kWithdrawSizedBox,
                          GetWithdrawText(),
                          kWithdrawSizedBox,
                          GetWithdrawButton(),
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








