import 'package:fittnessapp/yoga/beginner/beginner.dart';
import 'package:fittnessapp/yoga/expert/expert.dart';
import 'package:fittnessapp/yoga/intermediat/intermediat.dart';
import 'package:fittnessapp/yoga/mornnig_yoga/morning_yoga.dart';
import 'package:fittnessapp/yoga/posture_correction/posture_yoga.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          page(),
        ],
      ),
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
  var category = [
    {
      "name": "Beginner",
      "image":
          "https://t3.ftcdn.net/jpg/04/76/62/36/360_F_476623656_JFMzeXoa622KV9rnDEF6w2fVLkxXaFfv.jpg",
      "time": "10-15 Min",
    },
    {
      "name": "Intermediat",
      "image":
          "https://s3.amazonaws.com/freestock-prod/450/freestock_59467633.jpg",
      "time": "15-20 Min",
    },
    {
      "name": "Expert",
      "image":
          "https://t4.ftcdn.net/jpg/02/36/24/71/360_F_236247111_5LuBqQS1netR5GqjsY8UPU0z3oTlE4H9.jpg",
      "time": "20-25 min",
    },
  ];

  var morning = [
    {
      "name": "Morning routine",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEjNRs61Vfu7u2wFv-E7SFAY6IGRNpr5AU5Z3qYuqFemTquGmaUL7bykL44L3MpGqiOUU&usqp=CAU",
      "time": "20 Min",
    },
    {
      "name": "posture correction",
      "image":
          "https://thumbs.dreamstime.com/b/woman-doing-yoga-exercises-isolated-white-background-costume-sitting-pose-back-towards-camera-her-arms-up-214406815.jpg",
      "time": "20 Min",
    },
  ];

  var page = [
    const beginner(),
    const Intermediat(),
    const expert(),
  ];
  var page1 = [
    const morning_yoga_set(),
    const posture_yoga_set(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Yoga',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width - 20,
              child: Row(
                children: [
                  for (int a = 0; a < category.length; a++) ...[
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () => Get.to(() => page[a]),
                        child: Card(
                          elevation: 2,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(10),
                                ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    category[a]['name'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue.shade300),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.network(
                                      category[a]['image'].toString(),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.alarm_sharp,
                                      size: 12,
                                      color: Colors.black45,
                                    ),
                                    Text(
                                      category[a]['time'].toString(),
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.black54),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Morning Yoga',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width - 28,
                child: Row(
                  children: [
                    for (int b = 0; b < morning.length; b++) ...[
                      InkWell(
                        onTap: () {
                          Get.to(page1[b]);
                        },
                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SizedBox(
                            height: 250,
                            width: 158,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        morning[b]['image'].toString(),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 5, right: 5, left: 5),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue.withOpacity(0.2),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, top: 3),
                                                child: Text(
                                                  morning[b]['name'].toString(),
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade300,
                                                      fontSize: 12),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Icon(
                                                      Icons.alarm_outlined,
                                                      color: Colors.grey,
                                                      size: 13,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    morning[b]['time']
                                                        .toString(),
                                                    style: const TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          const Spacer(),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Icon(
                                                  Icons.slow_motion_video_sharp,
                                                  color: Colors.blue.shade200,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                  child: Text(
                    'Deep focus',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const page2(),
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
      "image":
          "https://img.freepik.com/free-photo/breathtaking-shot-beautiful-stones-turquoise-water-lake-hills-background_181624-12847.jpg?w=2000",
      "name": "Tibetan",
      "name1": "Maditation",
      "time": "11:55 Min",
    },
    {
      "image":
          "https://img.freepik.com/free-photo/breathtaking-shot-beautiful-stones-turquoise-water-lake-hills-background_181624-12847.jpg?w=2000",
      "name": "Brain",
      "name1": "Food",
      "time": "40:00 Min",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          for (int a = 0; a < data.length; a++) ...[
            Container(
              height: 60,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.1),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 75,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      data[a]['image'].toString()),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 8),
                                child: ClipOval(
                                  child: Align(
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      color: Colors.white.withOpacity(0.3),
                                      child: Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white.withOpacity(0.8),
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 3),
                        child: Text(
                          data[a]['name'].toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 3),
                        child: Text(
                          data[a]['name1'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3, left: 3),
                        child: Text(
                          data[a]['time'].toString(),
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
