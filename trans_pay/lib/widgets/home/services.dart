import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trans_pay/screens/Rent/house_owner.dart';

import '../../screens/Invest/invest_init_page.dart';

class GetServices extends StatelessWidget {
  const GetServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                style: TextStyle(fontFamily: 'Montserrat'),
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
                                style: TextStyle(fontFamily: 'Montserrat'),
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
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 13.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // TODO: take user to the internet page
                            },
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, HouseOwner.houseOwnerId);
                              },
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'images/house.svg',
                                    height: 40.0,
                                  ),
                                  const Text(
                                    'Rent',
                                    style: TextStyle(fontFamily: 'Montserrat'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 94.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              //TODO: take user to the water page
                              Navigator.pushNamed(context, InvestInitScreen.investInitId);
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'images/investment.svg',
                                  height: 40.0,
                                ),
                                const Text(
                                  'Invest',
                                  style: TextStyle(fontFamily: 'Montserrat'),
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
                                  style: TextStyle(fontFamily: 'Montserrat'),
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
    );
  }
}
