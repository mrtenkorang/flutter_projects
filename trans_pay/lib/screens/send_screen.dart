import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utilities/constants.dart';
import '../widgets/sendMoney/recipient_info.dart';
import '../widgets/sendMoney/send_button.dart';
import '../widgets/sendMoney/send_descriptive_text.dart';
import '../widgets/sendMoney/send_text_field.dart';
import '../widgets/sendMoney/top_info.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({Key? key}) : super(key: key);

  static String sendId = 'send';

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kSendContainerDecoration,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: GetSendTextBackAndIcon(),
                  ),
                  kSendSizedBox,
                  const GetRecipientDetails(),
                  kSendSizedBox,
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: const [
                          SendTextField(),
                          kSendSizedBox,
                          SendDescriptiveText(),
                          kSendSizedBox,
                          SendButton(),
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


