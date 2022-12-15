import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/initscreen/init_app_bar.dart';
import '../widgets/initscreen/init_buttons.dart';
import '../widgets/initscreen/init_page_text.dart';
import '../widgets/initscreen/pictures.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  static String initId = 'init';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const GetInitAppBar(),
        backgroundColor: kInitBackground,
        body: Column(
          children: [
            const GetPictures(),
            Expanded(
              child: Container(
                decoration: kInitContainerDecoration,
                child: Column(
                  children: const [
                    GetInitPageText(),
                    kInitSizedBox,
                    GetInitButtons(),
                    kInitSizedBox
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

