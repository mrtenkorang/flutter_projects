import 'package:flutter/material.dart';

class GetRecentTransactionTags extends StatelessWidget {
  const GetRecentTransactionTags({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Recent Transactions',
            style: TextStyle(
                fontFamily: 'Montserrat-ExtraBold', fontSize: 20.0),
          ),
        ),
        GestureDetector(
          onTap: () {
            //TODO: show all completed or failed transactions
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 110.0),
            child: Text(
              'SEE ALL',
              style:
              TextStyle(fontSize: 15.0, fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ],
    );
  }
}

