import 'package:digital_doctor/function_file.dart';
import 'package:digital_doctor/my_map.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Stack(
          children: [
            ///TO HEAD AND THE IMAGE SECTION
            Positioned(
              bottom: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.height,
              top: 320,
              child: Transform.translate(
                offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.3),
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.5),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white70,
                                        size: 18,
                                      ),
                                    )),
                              ),
                              Center(
                                child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.5),
                                    ),
                                    child: const Icon(
                                      Icons.chat,
                                      color: Colors.white70,
                                      size: 18,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        // image section
                        SizedBox(
                          height: 300,
                          child: Image.asset(
                            "assets/danieldan.png",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.width,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                        left: 25,
                        top: 70,
                        child: Text(
                          "About us",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )),

                    //ABOUT DOCTORS TEXT AND LOCATION

                    Positioned(
                        left: 10,
                        right: 2,
                        top: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              MyMap(
                                  initialCameraPosition: CameraPosition(
                                target: LatLng(45.521563, -122.677433),
                              )),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),

            // Make appointment btn
            Positioned(
              top: 610,
              left: 80,
              right: 80,
              //  bottom: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Text(
                    'Make Appointment',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            // DOCTORS NAME AND DESCRIPTION BOX
            Positioned(
              left: 25,
              right: 25,
              top: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.width -
                  50,
              // left: MediaQuery.of(context).size.width -
              //  MediaQuery.of(context).size.height,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.25,
                //width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Risca Marcelina',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Dentist',
                            style: TextStyle(color: Colors.black87),
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: const [
                              Icon(Icons.star, color: Color(0xFFC09100)),
                              Icon(Icons.star, color: Color(0xFFC09100)),
                              Icon(Icons.star, color: Color(0xFFC09100)),
                              Icon(Icons.star, color: Color(0xFFC09100)),
                              Icon(Icons.star, color: Color(0xFFC09100)),
                              SizedBox(width: 5),
                              Text("(3.2k+ Review)")
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kPrimaryColor,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$12/h',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
