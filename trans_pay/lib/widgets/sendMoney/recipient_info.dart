import 'package:flutter/material.dart';

class GetRecipientDetails extends StatelessWidget {
  const GetRecipientDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
