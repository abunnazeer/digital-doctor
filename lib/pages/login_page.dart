import 'dart:ffi';

import 'package:digital_doctor/functions/function_file.dart';
import 'package:digital_doctor/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore_for_file: prefer_const_constructors

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///Email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Email',
      ),
    );

    //Password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Password',
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white54,
                ),
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Text(
                        textAlign: TextAlign.center,
                        'Hello Again!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Welcome back you\'ve been missed!',
                          style: TextStyle(
                            fontSize: 17,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      //EMAIL AND PASSWORD SECTION
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: emailField,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: passwordField,
                        ),
                      ),

                      //RECOVERY TEXT SECTION
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            textAlign: TextAlign.right,
                            'Recovery Password',
                          ),
                        ),
                      ),

                      //LOGIN BTN SECTION
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: signIn,
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            //width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red[500],
                            ),
                            child: const Text(
                              'Sign',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      //ALTERNATIVE LOGIN SECTION
                      SizedBox(height: 30),
                      Text('Or continue with'),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Other login section
                          OtherLogin(imagePath: 'assets/google.png'),
                          OtherLogin(imagePath: 'assets/apple.png'),
                          OtherLogin(imagePath: 'assets/facebook.png'),
                        ],
                      ),

                      //NOT A MEMBER SECTION
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Not a member?"),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationForm()));
                            },
                            child: Text(
                              "Register now",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
