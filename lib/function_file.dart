import 'package:digital_doctor/doctors_list.dart';
import 'package:digital_doctor/register_page.dart';
import 'package:flutter/material.dart';
import 'package:digital_doctor/function_file.dart';

// ignore_for_file: prefer_const_constructors
const Color kMainBackgroundColor = Color(0xFFE0E0E0);
const Color kPrimaryColor = Color(0xFFFF0028);
const SizedBox kDevider = SizedBox(height: 10);
//const Image GoogleImagePath = Image(image: AssetImage('assets/google.png'));

class Btnbox extends StatelessWidget {
  final String child;
  Btnbox({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red[500],
      ),
      child: Text(
        child,
        style: TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}

class OtherLogin extends StatelessWidget {
  final String imagePath;
  // String GoogleImagePath = 'assets/google.png';
  //String AppleImagePath = 'assets/apple.png';
  //String FacebookImagePath = 'assets/facebook.png';

  OtherLogin({
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}

class DrDashboardItem extends StatelessWidget {
  final String drIconPath;
  final String drIconName;
  final VoidCallback onTap;

  DrDashboardItem(
      {required this.drIconName,
      required this.onTap,
      required this.drIconPath,
      super.key});

  ///final String child;
  var boxColors = Colors.grey.shade50;
  var boxTextColors = Colors.black;

  @override
  Widget build(BuildContext context) {
    if (drIconName == 'Doctors') {
      boxColors = Colors.red;
      boxTextColors = Colors.white;
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: boxColors,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(width: 40, height: 40, image: AssetImage(drIconPath)),
            Text(drIconName, style: TextStyle(color: boxTextColors)),
          ],
        ),
      ),
    );
  }
}

//  SPECIAL DOCTOR LIST VIEW SECTION

class SPdListview extends StatelessWidget {
  const SPdListview(
      {required this.drImagePath,
      required this.onTap,
      required this.drName,
      super.key});

  final VoidCallback onTap;
  final String drName;
  final String drImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          child: Column(
            children: <Widget>[
              Image(
                width: 80,
                height: 80,
                image: AssetImage(drImagePath),
              ),
              Text(
                drName,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OurDoctorListview extends StatelessWidget {
  const OurDoctorListview(
      {required this.drPhotoPath,
      required this.drIconPaths,
      required this.drTitle,
      required this.drSubtitle,
      super.key});

  final String drTitle;
  final String drSubtitle;
  final String drPhotoPath;
  final IconData drIconPaths;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red.shade900, Colors.red.shade50],
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage(
                          drPhotoPath,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        drTitle,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        drSubtitle,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Icon(
                  drIconPaths,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
