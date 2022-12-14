import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({Key? key}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(249, 239, 229, 1),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        child: const Icon(Icons.arrow_back_ios_rounded),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    const Text(
                      'Send Money',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 25.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 110.0),
                      child: Icon(Icons.search, size: 30.0),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 80.0,
                    ),
                    Text(
                      'Oware',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      '055 444 2223',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        color: Color.fromRGBO(141, 145, 150, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                        child: TextField(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Table(
                            children: const [
                              TableRow(
                                children: [
                                  Text('1'),
                                  Text('2'),
                                  Text('3'),
                                ]
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
