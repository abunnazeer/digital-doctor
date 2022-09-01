import 'package:digital_doctor/pages/dashboard_page.dart';
import 'package:digital_doctor/user/login_page.dart';
import 'package:digital_doctor/user/register_page.dart';
import 'package:digital_doctor/user/user_settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/dashboard': (context) => Dashboard(),
      '/login': (context) => LoginPage(),
      '/register': (context) => RegistrationForm(),
      '/settings': (context) => UserSettings(),
    },
  ));
}
