import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:internship/Backend/medicinemodel.dart';
import 'package:internship/Medicine.dart';
import 'package:internship/User/usermodel.dart';

class MedicineRepository {
  static final _db = FirebaseFirestore.instance;

  static Future<void> addMedicine(
      Medicinemodel medicine, UserModel user, BuildContext context) async {
    try {
      DocumentReference userDocRef = _db.collection("Users").doc(user.username);
      await userDocRef.collection("Medicines").add(medicine.toJson2());
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Medicine added successfully")));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MedicationScreen()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("An error occurred: $e")));
    }
  }

  static Future<UserModel?> getUserDetail(String email) async {
    try {
      final snapshot =
          await _db.collection("Users").where("Email", isEqualTo: email).get();
      if (snapshot.docs.isNotEmpty) {
        return UserModel.fromSnapshot(snapshot.docs[0]);
      } else {
        return null;
      }
    } catch (e) {
      print("Error fetching user details: $e");
      return null;
    }
  }
}
