import 'package:fittnessapp/sleep_tracker/add_alarm.dart';
import 'package:fittnessapp/sleep_tracker/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: camel_case_types
class sleep_schedules extends StatefulWidget {
  const sleep_schedules({Key? key}) : super(key: key);

  @override
  State<sleep_schedules> createState() => _sleep_schedulesState();
}

// ignore: camel_case_types
class _sleep_schedulesState extends State<sleep_schedules> {
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
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const sleep();
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
                'Sleep Schedule',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const new_page(),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.withOpacity(0.6),
        child: const Icon(Icons.add),
        onPressed: () => Get.to(() => const add_alarms()),
      ),
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
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          'Ideal Hours for Sleep',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          '8hours 30minutes',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Learn More',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 15),
                        child: Image.asset('assets/images/Vector (17).png'),
                      )
                    ],
                  ),
                ],
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
                  'Your Schedule',
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
            const date_time(),
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
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Flexible(
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 20, right: 100),
                          child:
                              Text('You will get 8hours 10minutes for tonight'),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 70,
                          animation: true,
                          lineHeight: 16.0,
                          animationDuration: 2500,
                          percent: 0.6,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          progressColor: Colors.purple.withOpacity(0.5),
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                    ],
                  ),
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
class date_time extends StatefulWidget {
  const date_time({Key? key}) : super(key: key);

  @override
  State<date_time> createState() => _date_timeState();
}

// ignore: camel_case_types
class _date_timeState extends State<date_time> {
  final todaysDate = DateTime.now();
  late int _dateIndex;
  final double _width = 50;
  final double _margin = 43;
  final _scrollController = ScrollController();
  late int days;

  void getDates() {
    final date = DateTime(todaysDate.year, todaysDate.month);
    days = DateTimeRange(
      start: date,
      end: DateTime(todaysDate.year, todaysDate.month + 1),
    ).duration.inDays;
    _dateIndex = todaysDate.day;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        _scroll();
      },
    );
    setState(() {});
  }

  void _scroll() {
    _scrollController.animateTo(
      (days * _dateIndex.toDouble()) +
          (_dateIndex.toDouble() * _width) -
          (_dateIndex * _margin),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    getDates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDateDays(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  SizedBox _buildDateDays() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days,
        controller: _scrollController,
        itemBuilder: (context, index) {
          final monthDate =
              DateTime(todaysDate.year, todaysDate.month, index + 1);

          return InkWell(
            onTap: () {
              _dateIndex = index;
              _scroll();
            },
            child: Container(
              width: 50,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                //  color: Colors.white,
                color: todaysDate.day == (index + 1)
                    ? Colors.blue.shade200
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0.2,
                    //   offset: const Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${index + 1}",
                    style: TextStyle(
                        fontSize: 20,
                        color: todaysDate.day == (index + 1)
                            ? Colors.white
                            : null),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    DateFormat('EEE').format(monthDate),
                    style: TextStyle(
                      fontSize: 15,
                      color:
                          todaysDate.day == (index + 1) ? Colors.white : null,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
