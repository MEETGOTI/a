import 'package:fittnessapp/workout_tracker/main_page.dart';
import 'package:fittnessapp/workout_tracker/workout_schedule.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class full_workout extends StatefulWidget {
  const full_workout({Key? key}) : super(key: key);

  @override
  State<full_workout> createState() => _full_workoutState();
}

// ignore: camel_case_types
class _full_workoutState extends State<full_workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Column(
        children: [
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
                    Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context) {
                        return const workout_tracks();
                      }),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Workout Schedule',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const page0(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class page0 extends StatefulWidget {
  const page0({Key? key}) : super(key: key);

  @override
  State<page0> createState() => _page0State();
}

// ignore: camel_case_types
class _page0State extends State<page0> {
  String dropdownvalue = 'Beginner';

  var items = [
    'Beginner',
    'Experience',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Center(
                        child: ClipOval(
                          child: Container(
                            height: 220,
                            width: 220,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: SizedBox(
                      height: 280,
                      width: double.infinity,
                      child: Image.asset('assets/images/Men-Vector.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Container(
                    height: MediaQuery.of(context).size.height + 700,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Column(children: const [
                        //       Padding(
                        //         padding: EdgeInsets.only(top: 30, right: 55),
                        //         child: Text(
                        //           'Fullbody Workout',
                        //           style: TextStyle(
                        //               fontWeight: FontWeight.w700,
                        //               fontSize: 14),
                        //         ),
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.only(left: 35, top: 10),
                        //         child: Text(
                        //           '11 Exercises | 32mins | 320 Calories Burn',
                        //           style: TextStyle(
                        //               fontSize: 12, color: Colors.grey),
                        //         ),
                        //       ),
                        //     ]),
                        //     Column(
                        //       children: const [
                        //         Padding(
                        //           padding: EdgeInsets.only(top: 25, right: 60),
                        //           child: Icon(
                        //             Icons.favorite,
                        //             color: Colors.red,
                        //             size: 20,
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        //   ],
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                // gradient: LinearGradient(colors: [
                                //   const Color.fromARGB(255, 163, 206, 223),
                                //   Colors.blue.shade300,
                                // ]),
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.black38,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Schedule Workout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Text(
                                    '5/27, 09:00 AM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                            return TodaysTaskScreen(name: '');
                                          }),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 15,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.purple.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.compare_arrows_rounded,
                                    color: Colors.black38,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Difficulity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Text(
                                    'Beginner',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 18),
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(right: 19),
                                //   child: DropdownButtonHideUnderline(
                                //     child: DropdownButton(
                                //       dropdownColor: Colors.white,
                                //       borderRadius: BorderRadius.circular(20),
                                //       value: dropdownvalue,
                                //       icon: const Icon(
                                //         Icons.arrow_forward_ios_outlined,
                                //         size: 15,
                                //         color: Colors.black,
                                //       ),
                                //       items: items.map((String items) {
                                //         return DropdownMenuItem(
                                //           value: items,
                                //           child: Text(
                                //             items,
                                //             style: const TextStyle(
                                //               fontWeight: FontWeight.w700,
                                //               fontSize: 11,
                                //               color: Colors.grey,
                                //             ),
                                //           ),
                                //         );
                                //       }).toList(),
                                //       onChanged: (String? newValue) {
                                //         setState(() {
                                //           dropdownvalue = newValue!;
                                //         });
                                //       },
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 35),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'You’ll Need',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black87,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '3 Items',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey,
                                        fontSize: 13),
                                  ),
                                ),
                              ),
                            ]),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 15),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child:
                                        Image.asset('assets/images/barbel.png'),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Barbell',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ]),
                              Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                        'assets/images/skipping-rope.png'),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Skipping Rope',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ]),
                              Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                        'assets/images/water-bottle.png'),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Bottle 1 Liters',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Exercises',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black87,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 55),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '3 Sets',
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
                        const Text('Fullbody Workout',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700)),
                        const list(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Lowerbody Workout',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700)),
                        const list2(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Ab Workout',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700)),
                        const list3(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

// ignore: camel_case_types
class _listState extends State<list> {
  List<ItemLists2> itemsL = [
    ItemLists2(
      a: 'assets/images/Vector-Exercises.png',
      title: 'Warm Up',
      discription: '05:00',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (1).png',
      title: 'Jumping Jack',
      discription: '12x',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (2).png',
      title: 'Skipping',
      discription: '15x',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (3).png',
      title: 'Squats',
      discription: '20x',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (5).png',
      title: 'Arm Raises',
      discription: '00:53',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (4).png',
      title: 'Rest and Drink',
      discription: '02:00',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemsL.length,
        itemBuilder: (BuildContext ctxt, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              elevation: 0.0,
              child: ListTile(
                leading: Image.asset(itemsL[index].a),
                title: Text(itemsL[index].title),
                subtitle: Text(itemsL[index].discription),
                trailing: const Icon(
                  Icons.arrow_circle_right_outlined,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists {
  String a;
  String title;
  String discription;

  ItemLists({required this.title, required this.discription, required this.a});
}

// ignore: camel_case_types
class list2 extends StatefulWidget {
  const list2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _list2State createState() => _list2State();
}

// ignore: camel_case_types
class _list2State extends State<list2> {
  List<ItemLists2> itemsL = [
    ItemLists2(
      a: 'assets/images/Vector-Exercises (6).png',
      title: 'Incline Push-Ups',
      discription: '12x',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (7).png',
      title: 'Push-Ups',
      discription: '15x',
    ),
    ItemLists2(
      a: 'assets/images/Vector-Exercises (8).png',
      title: 'Cobra Stretch',
      discription: '20x',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemsL.length,
        itemBuilder: (BuildContext ctxt, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              elevation: 0.0,
              child: ListTile(
                leading: Image.asset(itemsL[index].a),
                title: Text(itemsL[index].title),
                subtitle: Text(itemsL[index].discription),
                trailing: const Icon(Icons.arrow_circle_right_outlined),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists2 {
  String a;
  String title;
  String discription;

  ItemLists2({required this.title, required this.discription, required this.a});
}

// ignore: camel_case_types
class list3 extends StatefulWidget {
  const list3({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _list3State createState() => _list3State();
}

// ignore: camel_case_types
class _list3State extends State<list3> {
  List<ItemLists3> itemsL = [
    ItemLists3(
      a: 'assets/images/Vector-Exercises (6).png',
      title: 'Incline Push-Ups',
      discription: '12x',
    ),
    ItemLists3(
      a: 'assets/images/Vector-Exercises (7).png',
      title: 'Push-Ups',
      discription: '15x',
    ),
    ItemLists3(
      a: 'assets/images/Vector-Exercises (8).png',
      title: 'Cobra Stretch',
      discription: '20x',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemsL.length,
        itemBuilder: (BuildContext ctxt, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              elevation: 0.0,
              child: ListTile(
                leading: Image.asset(itemsL[index].a),
                title: Text(itemsL[index].title),
                subtitle: Text(itemsL[index].discription),
                trailing: const Icon(Icons.arrow_circle_right_outlined),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists3 {
  String a;
  String title;
  String discription;

  ItemLists3({required this.title, required this.discription, required this.a});
}
