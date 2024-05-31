import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kowope/features/account/models/user.dart';

class AccountRepository{
  Future<Persons?> getUserDetails()async{
    String email =  FirebaseAuth.instance.currentUser!.email!;
    DocumentSnapshot<Persons> documentSnapshot  = await FirebaseFirestore.instance.collection("users")
        .doc(email)
        .withConverter<Persons>(
      fromFirestore: (snapshot, options) => Persons.fromJson(snapshot.data() ?? {}),
      toFirestore: (person, options) => person.toJson(),
    )
        .get();
    return documentSnapshot.data();
  }
}