import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void signUpUser(
      {required String email,
      required String password,
      required String info,
      required String username}) async {
    String result = "Some error occured";

    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          info.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password
        );

        _firestore.collection("user").doc(credential.user!.uid).set({
          "username": username,
          "uid": credential.user!.uid,
          "email": email,
          "info": info,
          "following": [],
          "followers": [],
        });
        result = "success";
      }
    } catch (err) {
      result = err.toString();
    }
  }
}


