// import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStorageService {


CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> addUser(inputData) {
  return users
    .add(inputData)
    .then((value) => print("User Added"))
    .catchError((error) => print("Failed to add user: $error"));
}
}