import 'package:digital_doctor/config/auth_services.dart';
import 'package:digital_doctor/patients/patient_profile.dart';
import 'package:digital_doctor/user/login_page.dart';
import 'package:digital_doctor/widgets/bottom_navigation_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_switch/flutter_switch.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  bool status = false;
  final DatabaseService _auth = DatabaseService.int();
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationPage(indexnumber: 3),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.redAccent,
                          ),
                          child: const Image(
                            height: 90,
                            image: AssetImage(
                              'assets/annashvets.png',
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Ahmad Ibrahim",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text('${user.email}'),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () async {
                            await FirebaseAuth.instance
                                .signOut()
                                .then((result) {
                              Navigator.of(context).pop(true);
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 140,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 17,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  color: Colors.grey.shade300,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "PREFERENCES",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.language_outlined,
                                color: Colors.grey,
                                size: 28,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Language",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "English",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.dark_mode_outlined,
                                color: Colors.grey,
                                size: 28,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Dark Mode",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          FlutterSwitch(
                            height: 30,
                            width: 60.0,
                            value: status,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey,
                                size: 28,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Billing Details",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),

                    //LOGOUT BTN
                    GestureDetector(
                      onTap: () async {
                        await _auth.signOut().then((result) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Logout",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.logout,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
