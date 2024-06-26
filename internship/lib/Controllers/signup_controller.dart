import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:internship/Screens/sucess.dart';
import 'package:internship/User/usermodel.dart';

class SignupController {
  static final email = TextEditingController();
  static final firstName = TextEditingController();
  static final lastName = TextEditingController();
  static final username = TextEditingController();
  static final password = TextEditingController();
  static final phoneNumber = TextEditingController();
static GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  static SignUp(String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((Value) => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Sucess())));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Signup failed: $e'),
        ),
      );
    }
  }
  static bool ischecked(value) {
    if (value == true)
      return true;
    else {
      return false;
    }
  }
  static UserModel createUser() {
    return UserModel(
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        email: email.text.trim(),
        username: username.text.trim(),
        );
  }
}