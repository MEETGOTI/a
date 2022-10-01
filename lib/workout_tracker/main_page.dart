import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:fittnessapp/workout_tracker/workout_chart.dart';
import 'package:fittnessapp/workout_tracker/body_workout.dart';
import 'package:fittnessapp/workout_tracker/fullbody/fullbody_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// ignore: camel_case_types
class workout_tracks extends StatefulWidget {
  const workout_tracks({Key? key}) : super(key: key);

  @override
  State<workout_tracks> createState() => _workout_tracksState();
}

// ignore: camel_case_types
class _workout_tracksState extends State<workout_tracks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: MaterialButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.white,
                  height: 30,
                  minWidth: 15,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const bottum_page();
                      }),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Workout Tracker',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const page(),
      ]),
    );
  }
}

// ignore: camel_case_types
class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

// ignore: camel_case_types
class _pageState extends State<page> {
  bool status = true;
  bool statu = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: chart(),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 820,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          // gradient: LinearGradient(colors: [
                          //   const Color.fromARGB(255, 163, 206, 223),
                          //   Colors.blue.shade300,
                          // ]),
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Daily Workout Schedule',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const full_workout();
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
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Upcoming Workout',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'See more',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width - 47,
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.redAccent.withOpacity(0.5),
                        //     spreadRadius: 5,
                        //     blurRadius: 3,
                        //     offset: Offset(0, 0), // changes position of shadow
                        //   ),
                        // ],
                        color: Colors.white60.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset('assets/images/Workout-Pic.png'),
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: Text(
                                'Fullbody Workout',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                'Today, 03:00pm',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 10),
                          child: FlutterSwitch(
                            activeColor: Colors.purple.shade200,
                            width: 50.0,
                            height: 26.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 8.0,
                            // showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Card(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width - 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 8),
                          child: Image.asset('assets/images/Vector (4).png'),
                        ),
                        Column(
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
                              padding: EdgeInsets.only(top: 8, right: 5),
                              child: Text(
                                'June 05, 02:00pm',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 10),
                          child: FlutterSwitch(
                            activeColor: Colors.purple.shade200,
                            width: 50.0,
                            height: 26.0,
                            valueFontSize: 10.0,
                            toggleSize: 15.0,
                            value: statu,
                            borderRadius: 30.0,
                            padding: 8.0,
                            // showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                statu = val;
                              });
                            },
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'What Do You Want to Train',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  const page2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

// ignore: camel_case_types
class _page2State extends State<page2> {
  var data = [
    {
      "name": "Fullbody Workout",
      "name2": "11 Exercises | 32mins",
      "images": "assets/images/Vector (5).png",
    },
    {
      "name": "Lowerbody Workout",
      "name2": "12 Exercises | 40mins",
      "images": "assets/images/Vector (6).png",
    },
    {
      "name": "Ab Workout",
      "name2": "14 Exercises | 20mins",
      "images": "assets/images/Vector (7).png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int a = 0; a < data.length; a++) ...[
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 135,
                    width: MediaQuery.of(context).size.width - 45,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 25),
                                  child: Text(
                                    data[a]['name'].toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 10),
                                  child: Text(
                                    data[a]['name2'].toString(),
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.0)),
                                  ),
                                  elevation: 0.0,
                                  color:
                                      const Color.fromARGB(255, 243, 172, 228),
                                  height: 35,
                                  minWidth: 100,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return const fullbody();
                                      }),
                                    );
                                  },
                                  child: const Text(
                                    "View More",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Stack(
                                    fit: StackFit.loose,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 35, top: 10),
                                        child: ClipOval(
                                            child: Container(
                                          height: 90,
                                          width: 90,
                                          color: Colors.white.withOpacity(0.3),
                                        )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 10),
                                        child: Image.asset(
                                          data[a]['images'].toString(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
        // Stack(
        //   children: [
        //     Container(
        //       height: 135,
        //       width: MediaQuery.of(context).size.width - 50,
        //       decoration: BoxDecoration(
        //           // color: Colors.blue[200],
        //           gradient: const LinearGradient(colors: [
        //             Color.fromARGB(255, 163, 206, 223),
        //             Colors.blue
        //           ]),
        //           borderRadius: BorderRadius.circular(20)),
        //       child: Column(
        //         children: [
        //           Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //             Column(children: [
        //               const Padding(
        //                 padding: EdgeInsets.only(top: 20, left: 30),
        //                 child: Text(
        //                   'Lowebody Workout',
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //               const Padding(
        //                 padding: EdgeInsets.only(left: 30, top: 10),
        //                 child: Text(
        //                   '12 Exercises | 40mins',
        //                   style: TextStyle(fontSize: 12, color: Colors.white),
        //                 ),
        //               ),
        //               const SizedBox(
        //                 height: 20,
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 20),
        //                 child: MaterialButton(
        //                   shape: const RoundedRectangleBorder(
        //                     borderRadius:
        //                         BorderRadius.all(Radius.circular(100.0)),
        //                   ),
        //                   elevation: 0.0,
        //                   color: const Color.fromARGB(255, 243, 172, 228),
        //                   height: 35,
        //                   minWidth: 100,
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(builder: (context) {
        //                         return const lowerbody();
        //                       }),
        //                     );
        //                   },
        //                   child: const Text(
        //                     "View More",
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                 ),
        //               ),
        //             ]),
        //             // const SizedBox(
        //             //   width: 10,
        //             // ),
        //             const Spacer(),
        //             Stack(
        //               fit: StackFit.loose,
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.only(right: 40, top: 20),
        //                   child: ClipOval(
        //                       child: Container(
        //                     height: 90,
        //                     width: 90,
        //                     color: Colors.white.withOpacity(0.3),
        //                   )),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.only(top: 15),
        //                   child: Image.asset('assets/images/Vector (6).png'),
        //                 ),
        //               ],
        //             ),
        //           ]),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // Column(children: [
        //   Stack(
        //     children: [
        //       Container(
        //         height: 135,
        //         width: MediaQuery.of(context).size.width - 50,
        //         decoration: BoxDecoration(
        //             // color: Colors.blue[200],
        //             gradient: const LinearGradient(colors: [
        //               Color.fromARGB(255, 163, 206, 223),
        //               Colors.blue
        //             ]),
        //             borderRadius: BorderRadius.circular(20)),
        //         child: Column(
        //           children: [
        //             Row(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Column(children: [
        //                     const Padding(
        //                       padding: EdgeInsets.only(
        //                         top: 20,
        //                       ),
        //                       child: Text(
        //                         'AB Workout',
        //                         style: TextStyle(
        //                           color: Colors.white,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     ),
        //                     const Padding(
        //                       padding: EdgeInsets.only(left: 30, top: 10),
        //                       child: Text(
        //                         '14 Exercises | 20mins',
        //                         style: TextStyle(
        //                             fontSize: 12, color: Colors.white),
        //                       ),
        //                     ),
        //                     const SizedBox(
        //                       height: 20,
        //                     ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(left: 20),
        //                       child: MaterialButton(
        //                         shape: const RoundedRectangleBorder(
        //                           borderRadius:
        //                               BorderRadius.all(Radius.circular(100.0)),
        //                         ),
        //                         elevation: 0.0,
        //                         color: const Color.fromARGB(255, 243, 172, 228),
        //                         height: 35,
        //                         minWidth: 100,
        //                         onPressed: () {
        //                           Navigator.push(
        //                             context,
        //                             MaterialPageRoute(builder: (context) {
        //                               return const ab_workout();
        //                             }),
        //                           );
        //                         },
        //                         child: const Text(
        //                           "View More",
        //                           style: TextStyle(
        //                               color: Colors.white,
        //                               fontSize: 12,
        //                               fontWeight: FontWeight.bold),
        //                         ),
        //                       ),
        //                     ),
        //                   ]),
        //                   const Spacer(),
        //                   Stack(
        //                     fit: StackFit.loose,
        //                     children: [
        //                       Padding(
        //                         padding:
        //                             const EdgeInsets.only(right: 40, top: 20),
        //                         child: ClipOval(
        //                           child: Container(
        //                             height: 90,
        //                             width: 90,
        //                             color: Colors.white.withOpacity(0.3),
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.only(top: 30),
        //                         child:
        //                             Image.asset('assets/images/Vector (7).png'),
        //                       ),
        //                     ],
        //                   ),
        //                 ]),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ]),
      ],
    );
  }
}
