import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internship/Controllers/signup_controller.dart';
import 'package:internship/Screens/Homenew.dart';
import 'package:internship/User/usermodel.dart';

class UserRepository {
  static final _db = FirebaseFirestore.instance;
  static final user=UserModel(email: SignupController.email.text, firstName: SignupController.firstName.text, lastName: SignupController.lastName.text, phoneNumber: SignupController.phoneNumber.text, username: SignupController.username.text);

  // Function to create a user in Firestore
  static Future<void> createUser(UserModel user, BuildContext context) async {
    try {
      await _db.collection("Users").doc(user.username).set(user.toJson());
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "Authentication Error")));
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? "Firebase Error")));
    } on PlatformException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? "Platform Error")));
    } on FormatException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("An unknown error occurred: $e")));
    }
  }

  static Future<UserModel?> getuseremail(String email) async {
    try {
      final data =
          await _db.collection("Users").where("Email", isEqualTo: email).get();
      if (data.docs.isNotEmpty) {
        return UserModel.fromSnapshot(data.docs[0]);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }}
    
    static Future<UserCredential?> signInGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;
      final Credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await UserRepository.createUser(user,context);
      return await FirebaseAuth.instance
          .signInWithCredential(Credentials)
          .then((value) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homenew()),
              ));
             
    } on FirebaseAuthException catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    } on FirebaseException catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    } on PlatformException catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    } on FormatException catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
  }

