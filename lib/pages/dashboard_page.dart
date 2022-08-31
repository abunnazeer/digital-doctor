import 'package:digital_doctor/doctors/consultation_page.dart';
import 'package:digital_doctor/doctors/doctors_list.dart';
import 'package:digital_doctor/doctors/doctors_profile.dart';
import 'package:digital_doctor/doctors/hospital_page.dart';
import 'package:digital_doctor/doctors/labservices_page.dart';
import 'package:digital_doctor/doctors/others_page.dart';
import 'package:digital_doctor/doctors/pharmacy_page.dart';
import 'package:digital_doctor/widgets/bottom_navigation_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/function_file.dart';

// ignore_for_file: prefer_const_constructors
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List doctorsLists = [
    ['Anna', 'assets/annashvets.png'],
    ['Antoni', 'assets/antonishkraba.png'],
    ['Ahmad', 'assets/gustavofring.png'],
    ['Mustapha', 'assets/danieldan.png'],
    ['Ibrahim', 'assets/alexanderzvir.png'],
  ];

  final List ourDoctorsList = [
    [
      'assets/danieldan.png',
      'Dr. Fatima  Ahmad',
      'Microbiologist',
      Icons.heart_broken
    ],
    [
      'assets/antonishkraba.png',
      'Dr. Habiba  Ahmad',
      'Physicist',
      Icons.heart_broken
    ],
    [
      'assets/gustavofring.png',
      'Dr. Ahmad Abdullahi',
      'Pharmacologist',
      Icons.heart_broken
    ],
  ];

  final List doctorsGridview = [
    ['assets/doctor.png', 'Doctors'],
    ['assets/hospital.png', 'Hospital'],
    ['assets/medicine.png', 'Pharmacy'],
    ['assets/emergency.png', 'Consultation'],
    ['assets/microscope.png', 'Lab Services'],
    ['assets/categories.png', 'Others'],
  ];

  List dashboardGridPages = [
    const DoctorsListIndex(),
    const HospitalPage(),
    const PharmacyPage(),
    const ConsultationPage(),
    const LabServicesPage(),
    const OthersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        bottomNavigationBar: BottomNavigationPage(indexnumber: 0),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: const Text(
                  'Hi Morning',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Ahmad',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // Icon(Icons.),
                    Container(
                      width: 25,
                      child: Image(
                        image: AssetImage(
                          'assets/notification.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[100],
                  ),
                  child: TextFormField(
                    //  textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 248,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: doctorsGridview.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DrDashboardItem(
                              drIconPath: doctorsGridview[index][0],
                              drIconName: doctorsGridview[index][1],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          dashboardGridPages[index]),
                                );
                              }),
                        );
                      }),
                ),
              ),
              // SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Specialist Doctor',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: ListView.builder(
                    itemCount: doctorsLists.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SPdListview(
                        drImagePath: doctorsLists[index][1],
                        drName: doctorsLists[index][0],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorProfilePage()),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Our Doctor',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  itemCount: ourDoctorsList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return OurDoctorListview(
                      drPhotoPath: ourDoctorsList[index][0],
                      drTitle: ourDoctorsList[index][1],
                      drSubtitle: ourDoctorsList[index][2],
                      drIconPaths: ourDoctorsList[index][3],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
