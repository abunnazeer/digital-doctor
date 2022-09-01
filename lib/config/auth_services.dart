import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digital_doctor/user/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'db_config.dart';

class DatabaseService {
  DatabaseService.int();
  static final DatabaseService instance = DatabaseService.int();
  FirebaseAuth? auth;
  //
  FirebaseAuth initAuth() {
    auth ??= FirebaseAuth.instance;
    return auth!;
  }

  //final FirebaseAuth _auth = FirebaseAuth.instance;
  // User? user;

  //Registration with email and password

  Future<User> registerUser(String name, String email, String password) async {
    try {
      FirebaseAuth auth = initAuth();
      UserCredential result = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (result.user == null) {
        return Future.error("Unable to create  an account");
      }
      return Future.value(result.user);
    } on FirebaseAuthException catch (error) {
      return Future.error(error.message!);
    }
  }

//sign in with email and password
  Future<User> logIn(String email, String password) async {
    try {
      FirebaseAuth auth = initAuth();
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (result.user == null) {
        return Future.error("Unable to create  an account");
      }
      return Future.value(result.user);
    } on FirebaseAuthException catch (error) {
      return Future.error(error.message!);
    }
  }

//sign out functionality
  Future signOut() async {
    try {
      FirebaseAuth auth = initAuth();
      return auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<DocumentReference<Map<String, dynamic>>> addUserProfile(
      Map<String, dynamic> userMap) async {
    DocumentReference<Map<String, dynamic>> ref =
        await FirebaseFirestore.instance.collection("UserProfile").add(userMap);
    return Future.value(ref);
  }
}
