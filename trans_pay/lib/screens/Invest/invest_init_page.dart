import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvestInitScreen extends StatelessWidget {
  static String investInitId = 'inInit';

  const InvestInitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
        body: Column(
          children: [
            SizedBox(
              height: 300.0,
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    height: 200.0),
                items: [
                  SvgPicture.asset(
                    'images/boyAndMoney.svg',
                    height: 200,
                  ),
                  SvgPicture.asset(
                    'images/business-investment.svg',
                    height: 500.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 400.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          child: const Text(
                            'Agricultural Investment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color: Colors.white,
                          child: const Text(
                            'Financial Investment',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          child: const Text(
                            'Real-Estate Investment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                      child: SizedBox(
                        height: 60.0,
                        child: MaterialButton(
                          elevation: 10.0,
                          onPressed: () {},
                          color:  Colors.white,
                          child: const Text(
                            'Food Investment',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
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
