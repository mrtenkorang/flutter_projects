import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HouseOwner extends StatefulWidget {
  const HouseOwner({Key? key}) : super(key: key);

  static String houseOwnerId = 'houseOwner';

  @override
  State<HouseOwner> createState() => _HouseOwnerState();
}

class _HouseOwnerState extends State<HouseOwner> {

  Future pickImage(ImageSource imageSource) async{
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(249, 239, 229, 1),
      body: Center(
        child: Column(
          children: const [
            Text('Welcome to the house owner page'),
          ],
        ),
      ),
    );
  }
}


