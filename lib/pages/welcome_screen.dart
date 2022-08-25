import 'package:digital_doctor/functions/function_file.dart';
import 'package:digital_doctor/pages/login_page.dart';
import 'package:digital_doctor/pages/register_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          backgroundColor: kMainBackgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white54,
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      //padding: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        //width: 400,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          "assets/homed.png",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Text(
                          textAlign: TextAlign.center,
                          'Healthcare solution with consultation',
                          style: TextStyle(
                            height: 1.6,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Clinical excellence must be the priority for any health care service provider',
                            style: TextStyle(
                              height: 1.6,
                              fontSize: 17,
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              //decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      //  flex: 2,
                      child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationForm()));
                          },
                          child: Btnbox(
                            child: "Register",
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Btnbox(
                            child: "Sign In",
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
