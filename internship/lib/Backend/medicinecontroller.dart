import 'package:flutter/material.dart';
import 'package:internship/Backend/medicinemodel.dart';

class MedicineController {
  static final medicineController = TextEditingController();

  static Medicinemodel createMedicine(String medicinename, String time) {
    return Medicinemodel(
      medicinename: medicineController.text,
      time:time,
    );
  }
}
