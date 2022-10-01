import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:fittnessapp/sleep_tracker/sleep_chart.dart';
import 'package:fittnessapp/sleep_tracker/sleep_schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// ignore: camel_case_types
class sleep extends StatefulWidget {
  const sleep({Key? key}) : super(key: key);

  @override
  State<sleep> createState() => _sleepState();
}

// ignore: camel_case_types
class _sleepState extends State<sleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const bottum_page();
                      }),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 15,
                    color: Colors.black,
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Sleep Tracker',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const new_page(),
      ]),
    );
  }
}

// ignore: camel_case_types
class new_page extends StatefulWidget {
  const new_page({Key? key}) : super(key: key);

  @override
  State<new_page> createState() => _new_pageState();
}

// ignore: camel_case_types
class _new_pageState extends State<new_page> {
  bool status = false;
  bool statu = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: const sleep_charts()),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 180, 193, 235),
                  Color.fromARGB(255, 106, 137, 224),
                ]),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              'Last Night Sleep',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              '8h 20m',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child:
                              Image.asset('assets/images/Sleep-Graph (2).png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 163, 206, 223),
                      Colors.blue.shade300,
                    ]),
                    borderRadius: BorderRadius.circular(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Daily Sleep Schedule',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromARGB(255, 250, 249, 249),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const sleep_schedules();
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
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today Schedule',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0.0,
              //  color: Colors.white,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Image.asset('assets/images/bed.png'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          'Bedtime, 09:00pm',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          'in 6hours 22minutes',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
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
              elevation: 0.0,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Image.asset('assets/images/Icon-Alaarm.png'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          'Alarm, 05:10am',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          'in 14hours 30minutes',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                    ),
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
          ],
        ),
      ),
    );
  }
}
