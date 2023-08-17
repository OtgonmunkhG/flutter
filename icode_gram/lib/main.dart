import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icode_gram/screen/login_screen.dart';
import 'package:icode_gram/screen/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    home: LoginScreen(),
  ));
}
