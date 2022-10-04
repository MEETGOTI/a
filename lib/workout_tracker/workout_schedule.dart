import 'package:fittnessapp/workout_tracker/add_schedule.dart';
import 'package:fittnessapp/workout_tracker/body_workout.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class TodaysTaskScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var name;
  TodaysTaskScreen({Key? key, this.name}) : super(key: key);

  @override
  State<TodaysTaskScreen> createState() => _TodaysTaskScreenState();
}

class _TodaysTaskScreenState extends State<TodaysTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
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
                          return const full_workout();
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
                  'Workout Schedule',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const page(),
          time(
            vlue: widget.name,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const add_schedules();
            }),
          );
        },
        backgroundColor: Colors.purple.shade300,
        child: const Icon(Icons.add),
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
          _buildDateHeader(context),
          const SizedBox(
            height: 20,
          ),
          _buildDateDays(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Row _buildDateHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat("MMMM, dd").format(todaysDate),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.calendar_month_outlined),
        //   ),
        // ),
      ],
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

// ignore: camel_case_types, must_be_immutable
class time extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var vlue;
  time({Key? key, required this.vlue}) : super(key: key);

  @override
  State<time> createState() => _timeState();
}

// ignore: camel_case_types
class _timeState extends State<time> {
  List time = [
    '04:00 AM',
    '05:00 AM',
    '06:00 AM',
    '07:00 AM',
    '08:00 AM',
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM',
    '08:00 PM',
    '09:00 PM',
    '10:00 PM',
    '11:00 PM',
    '12:00 PM',
  ];
  String dropdownvalue = 'Lowerbody Workout';

  var items = [
    'Lowerbody Workout',
    'Upperbody Workout',
    'AB Workout',
  ];
  // ignore: prefer_typing_uninitialized_variables
  List n = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List six = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < n.length; i++) ...{
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      dialog(n[i]);
                    },
                    child: SizedBox(
                      child: Row(
                        children: [
                          Text(
                            time[i].toString(),
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          Text(
                            six[i],
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          Text(
                            widget.vlue.toString(),
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
            }
          ],
        ),
      ),
    );
  }

  Future dialog(i) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white.withOpacity(0.8),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          title: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {
                          six[i] = "";
                        });
                      },
                      icon: const Icon(Icons.clear_rounded))),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Workout Schedule'),
              ),
            ],
          ),
          content: DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(20),
              value: dropdownvalue,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  // ignore: avoid_print
                });
              },
            ),
          ),
          actions: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  setState(() {
                    six[i] = dropdownvalue;
                  });
                },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple.shade200),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Mark as Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  void markasdone(i) {}
}
