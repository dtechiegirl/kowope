import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kowope/features/account/models/user.dart';
// import 'package:kowope/features/account/models/user.dart';

class SignupRepository {
  var auth = FirebaseAuth.instance;

  Future<void> registerUser(
      {required String email, required String password}) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> saveUser({required Persons person}) async {
    FirebaseFirestore.instance.collection("users").doc(person.emailAddress).set(person.toJson());
  }
}
