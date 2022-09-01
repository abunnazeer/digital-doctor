import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DatabaseManager {
  Future<DocumentReference<Map<String, dynamic>>> addUserProfile(
      Map<String, dynamic> userMap) async {
    DocumentReference<Map<String, dynamic>> ref =
        await FirebaseFirestore.instance.collection("UserProfile").add(userMap);
    return Future.value(ref);
  }
}
