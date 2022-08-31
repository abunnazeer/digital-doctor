import 'package:digital_doctor/widgets/bottom_navigation_page.dart';
import 'package:flutter/material.dart';

class PatientProfile extends StatefulWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  State<PatientProfile> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SafeArea(
        child: Scaffold(
          body: Text("Patient Pag"),
        ),
      ),
    );
  }
}
