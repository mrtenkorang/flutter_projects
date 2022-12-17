import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginAndSignUpController{

  LoginAndSignUpController({required this.email, required this.password});

  final _auth = FirebaseAuth.instance;

  String email;
  String password;



  Future<void> login() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      const Text('Please check your credentials');
    }
  }

  Future<void> signup() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      const Text('please check your credentials');
    }
  }
}