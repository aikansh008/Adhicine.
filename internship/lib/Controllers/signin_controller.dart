import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internship/Screens/Homenew.dart';
import 'package:internship/User/usermodel.dart';


class SigninController {
  static final email = TextEditingController();
  static final password = TextEditingController();
  static Future<void> SignIn( UserModel usermodel,String email, String password,
      BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((Value) => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Homenew())));
      throw "Successfully LoggedIn !";
    } on FirebaseAuthException {
      throw "Something Went wrong";
    } catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Sucessful !")));
    }
  }
}
