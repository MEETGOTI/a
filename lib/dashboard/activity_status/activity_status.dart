import 'package:fittnessapp/sleep_tracker/home_page.dart';
import 'package:fittnessapp/workout_tracker/fullbody/fullbody_workout.dart';
import 'package:fittnessapp/workout_tracker/lowerbody/lowerbody_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: camel_case_types
class activity extends StatefulWidget {
  const activity({Key? key}) : super(key: key);

  @override
  State<activity> createState() => _activityState();
}

// ignore: camel_case_types
class _activityState extends State<activity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Activity Status',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 315,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Wrap(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 295,
                            width: 30,
                            color: const Color.fromARGB(255, 250, 247, 250)
                                .withOpacity(0.9),
                            child: FAProgressBar(
                              progressColor: Colors.purple.withOpacity(0.4),
                              direction: Axis.vertical,
                              verticalDirection: VerticalDirection.up,
                              currentValue: 60,
                              displayText: '%',
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 68, left: 5, right: 5),
                              child: ClipOval(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.red.withOpacity(0.2),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 35, left: 5, right: 5),
                              child: ClipOval(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.red.withOpacity(0.2),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 33, left: 5, right: 5),
                              child: ClipOval(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.red.withOpacity(0.2),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 33, left: 5, right: 5),
                              child: ClipOval(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.red.withOpacity(0.2),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 33, left: 5, right: 5),
                              child: ClipOval(
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.red.withOpacity(0.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Water Intake',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  '4 Liters',
                                  style: TextStyle(
                                      color: Colors.blue[300],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'Real time updates',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '6am - 8am',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '600ml',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.pink.withOpacity(0.6),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '9am - 11am',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '500ml',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.pink.withOpacity(0.6),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '11am - 2pm',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '1000ml',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.pink.withOpacity(0.6),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '2pm - 4pm',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '700ml',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.pink.withOpacity(0.6),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '4pm - now',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '900ml',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.pink.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const sleep();
                        }),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 70, top: 10),
                            child: Text(
                              'Sleep',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Text(
                              '8h 20m',
                              style: TextStyle(
                                  color: Colors.blue[300],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/Sleep-Graph.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 65, top: 10),
                          child: Text(
                            'Calories',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Text(
                            '760 kCal',
                            style: TextStyle(
                                color: Colors.blue[300],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(),
                        Flexible(
                          child: CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.7,
                            center: ClipOval(
                              child: Container(
                                height: 57,
                                width: 57,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 163, 206, 223),
                                    Colors.blue
                                  ]),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Text(
                                        '230kCal',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.9),
                                        ),
                                      ),
                                    ),
                                    Text('left',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white.withOpacity(0.9),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.purple.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'upcoming Workout',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const page2(),
      ],
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
      "images": "assets/images/Workout1.png",
      "name": "Fullbody Workout",
      "name2": "180 Calories Burn | 20minutes",
      "value": 0.9,
    },
    {
      "images": "assets/images/Workout2.png",
      "name": "Lowerbody Workout",
      "name2": "200 Calories Burn | 30minutes",
      "value": 0.2,
    },
  ];
  var navi = [
    const fullbody(),
    const lowerbody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int a = 0; a < data.length; a++) ...[
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return navi[a];
                  }),
                );
              },
              child: SizedBox(
                height: 80,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 10),
                            child: Image.asset(
                              data[a]['images'].toString(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(
                                  data[a]['name'].toString(),
                                  style: const TextStyle(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2, left: 8),
                                child: Text(
                                  data[a]['name2'].toString(),
                                  style: const TextStyle(color: Colors.black38),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 150,
                                animation: true,
                                lineHeight: 13.0,
                                animationDuration: 2500,
                                percent: data[a]['value'] as double,
                                progressColor: Colors.purple.withOpacity(0.5),
                                barRadius: const Radius.circular(10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 6),
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 35,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ],
    );
  }
}
