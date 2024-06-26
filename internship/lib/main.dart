import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:internship/Backend/Firebaseapi.dart";
import 'package:internship/app.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}
