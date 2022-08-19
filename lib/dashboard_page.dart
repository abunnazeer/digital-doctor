import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFFD32F2F),
          ),
          unselectedIconTheme: IconThemeData(
            color: const Color(0xFFEF9A9A),
          ),
          items: const [
            BottomNavigationBarItem(
              //  backgroundColor: Colors.cyan,
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              //   title:Text(Home)
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "home",
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      'Lemonoru',
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/dr.png',
                          ),
                        ),
                        Text(
                          "Doctors",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/hospital.png',
                          ),
                        ),
                        Text(
                          "Hospital",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/medicine.png',
                          ),
                        ),
                        Text(
                          "Pharmacy",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/emergency.png',
                          ),
                        ),
                        Text(
                          "Consultation",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/microscope.png',
                          ),
                        ),
                        Text(
                          "Lab Services",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            'assets/categories.png',
                          ),
                        ),
                        Text(
                          "Others",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        //height: 120,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: const <Widget>[
                            Image(
                              width: 80,
                              height: 80,
                              image: AssetImage(
                                'assets/annashvets.png',
                              ),
                            ),
                            Text(
                              "Anna",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        //height: 150,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: const <Widget>[
                            Image(
                              width: 80,
                              height: 80,
                              image: AssetImage(
                                'assets/antonishkraba.png',
                              ),
                            ),
                            Text(
                              "Antoni",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        //height: 150,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: const <Widget>[
                            Image(
                              width: 80,
                              height: 80,
                              image: AssetImage(
                                'assets/gustavofring.png',
                              ),
                            ),
                            Text(
                              "Ahmad",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        //height: 150,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: const <Widget>[
                            Image(
                              width: 80,
                              height: 80,
                              image: AssetImage(
                                'assets/danieldan.png',
                              ),
                            ),
                            Text(
                              "Mustapha",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100],
                        ),
                        child: Column(
                          children: const <Widget>[
                            Image(
                              width: 80,
                              height: 80,
                              image: AssetImage(
                                'assets/alexanderzvir.png',
                              ),
                            ),
                            Text(
                              "Ibrahim",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                child: ListView(
                  children: [
                    Padding(
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
                                          'assets/danieldan.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "Dr. Ahmad Abdullahi",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Microbiologist",
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
                                  Icons.heart_broken,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
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
                                          'assets/danieldan.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "Dr. Ahmad Abdullahi",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Microbiologist",
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
                                  Icons.heart_broken,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
