import 'package:flutter/material.dart';

class GetRecentTransaction extends StatelessWidget {
  const GetRecentTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 8.0, left: 20.0, right: 20.0),
      child: Container(
        height: 90.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.add,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 50.0),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 80.0),
                    child: Text(
                      'David',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromRGBO(141, 145, 150, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'February 24,2022',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromRGBO(141, 145, 150, 1),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 20.0),
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 5.0),
                  child: Text(
                    'GHC 200',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
