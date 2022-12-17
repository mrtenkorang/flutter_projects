import 'package:flutter/material.dart';

class GetUsername with ChangeNotifier{

  late String userName = '';

  void changeUsername(String name){
    userName = name;
    notifyListeners();
  }

  String getUsername(){
    return userName;
  }
}