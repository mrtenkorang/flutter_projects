import 'package:flutter/material.dart';

class GetSendTextBackAndIcon extends StatelessWidget {
  const GetSendTextBackAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}