import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:digital_doctor/pages/dashboard_page.dart';
import 'package:digital_doctor/patients/appointment.dart';
import 'package:digital_doctor/user/user_settings.dart';

import 'package:digital_doctor/widgets/messaging_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({required this.indexnumber, Key? key}) : super(key: key);
  int indexnumber = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: indexnumber,
        items: const <Widget>[
          Icon(
            Icons.home,
            color: Colors.red,
          ),
          Icon(
            Icons.calendar_month,
            color: Colors.red,
          ),
          Icon(
            Icons.chat_rounded,
            color: Colors.red,
          ),
          Icon(
            Icons.perm_identity,
            color: Colors.red,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.redAccent,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: const Dashboard()));
          } else if (index == 1) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: const AppointmentPage()));
          } else if (index == 2) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: const MessagingPage()));
          } else if (index == 3) {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: const UserSettings()));
          }
        });
  }
}
