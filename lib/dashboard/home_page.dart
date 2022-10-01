import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/dashboard/activity_chart.dart';
import 'package:fittnessapp/dashboard/activity_status/activity_status.dart';
import 'package:fittnessapp/dashboard/notification.dart';
import 'package:fittnessapp/workout_tracker/lowerbody/lowerbody_workout.dart';
import 'package:fittnessapp/workout_tracker/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _auth = FirebaseAuth.instance;
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('user_data')
            .doc(_auth.currentUser!.uid)
            .collection('user_data')
            .doc("user_register_data")
            .collection("user_register_data")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            // ignore: avoid_print
            print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            a['id'] = document.id;
          }).toList();
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome Back,',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  storedocs[0]['First name'].toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  storedocs[0]['Last name'].toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            MaterialButton(
                              height: 50,
                              minWidth: 45,
                              child: Image.asset(
                                'assets/images/Notification-Icon.png',
                                fit: BoxFit.fill,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const notification_page();
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const MainPage()
              ],
            ),
          );
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String dropdownvalue = 'Wekly';

  var items = [
    'Wekly',
    'Monthly',
    'Yearly',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    // color: Colors.blue[200],
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 163, 206, 223),
                      Colors.blue
                    ]),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 40),
                              child: ClipOval(
                                  child: Container(
                                height: 8,
                                width: 8,
                                color: const Color.fromARGB(255, 251, 249, 252)
                                    .withOpacity(0.2),
                              )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 150),
                              child: ClipOval(
                                  child: Container(
                                height: 8,
                                width: 8,
                                color: const Color.fromARGB(255, 251, 249, 252)
                                    .withOpacity(0.2),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'BMI (Body Mass Index)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Text(
                                'You have a normal weight',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                              ),
                              elevation: 0.0,
                              color: const Color.fromARGB(255, 243, 172, 228),
                              height: 40,
                              minWidth: 120,
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) {
                                //     return const profile_page1();
                                //   }),
                                // );
                              },
                              child: const Text(
                                "View More",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: ClipOval(
                                  child: Container(
                                height: 8,
                                width: 8,
                                color: const Color.fromARGB(255, 251, 249, 252)
                                    .withOpacity(0.2),
                              )),
                            ),
                          ]),
                          const Spacer(),
                          Stack(
                            fit: StackFit.loose,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, right: 35),
                                child: ClipOval(
                                    child: Container(
                                  height: 110,
                                  width: 110,
                                  color: Colors.white,
                                )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 35),
                                child: ClipPath(
                                  clipper: Clip1Clipper(),
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Colors.blue.shade300,
                                      const Color.fromARGB(255, 163, 206, 223),
                                    ])),
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '20,1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
                left: 280,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 251, 249, 252)
                          .withOpacity(0.2)),
                ),
              ),
              Positioned(
                top: 150,
                left: -40,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 251, 249, 252)
                          .withOpacity(0.2)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Latest Workout',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Get.to(const lowerbody()),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 47,
                decoration: const BoxDecoration(),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 8),
                    child: Image.asset('assets/images/Vector (4).png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          'Lowerbody Workout',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          '02:00pm',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 163, 206, 223),
                    Colors.blue.shade300,
                  ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Workout Tracker',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: Color.fromARGB(255, 250, 249, 249),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const workout_tracks();
                          }),
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade200,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'check',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Activity Progress',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            dropdownColor: Colors.purple.shade200,
                            borderRadius: BorderRadius.circular(20),
                            value: dropdownvalue,
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const BarChartSample1(),
          const SizedBox(
            height: 10,
          ),
          // const workout(),
          const activity(),
        ]),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width, 0, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
