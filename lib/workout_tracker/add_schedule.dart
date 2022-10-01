import 'package:fittnessapp/workout_tracker/workout_schedule.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class add_schedules extends StatefulWidget {
  const add_schedules({Key? key}) : super(key: key);

  @override
  State<add_schedules> createState() => _add_schedulesState();
}

// ignore: camel_case_types
class _add_schedulesState extends State<add_schedules> {
  String dropdownvalue = 'Beginner';
  String dropdownvalue1 = 'Fullbody Workout';

  var items1 = ['Fullbody Workout', 'Upperbody Workout', 'AB Workout'];

  var items = [
    'Beginner',
    'Experience',
  ];
  // ignore: prefer_typing_uninitialized_variables
  var _chosenDateTime;

  void _showDatePicker(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 260,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: CupertinoTimerPicker(
                      mode: CupertinoTimerPickerMode.hm,
                      initialTimerDuration:
                          const Duration(hours: 12, minutes: 12),

                      onTimerDurationChanged: (value) {
                        setState(() {
                          _chosenDateTime = value;
                        });
                      },
                      // initialDateTime: DateTime.now(),
                    ),
                  ),

                  // Close the modal
                  CupertinoButton(
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () => Navigator.of(ctx).pop(),
                  )
                ],
              ),
            ));
  }

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return TodaysTaskScreen(
                            name: _chosenDateTime,
                          );
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.clear_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Add Schedule',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const dateyaer(),
          CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsetsDirectional.zero,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.7),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Time',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                onPressed: () => _showDatePicker(context),
              ),
            ),
            child: SafeArea(
              child: Center(
                child: InkWell(
                  onTap: () => _showDatePicker(context),
                  child: Text(
                    _chosenDateTime != null
                        ? _chosenDateTime.toString()
                        : 'No time picked!',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.blue),
                  ),
                ),
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
                'Details Workout',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.fitness_center_rounded,
                      color: Colors.black38,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Choose Workout',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        value: dropdownvalue1,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                        items: items1.map((String items1) {
                          return DropdownMenuItem(
                            value: items1,
                            child: Text(
                              items1,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue1 = newValue!;
                          });
                        },
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
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.black38,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Difficulity',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        value: dropdownvalue,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                color: Colors.grey,
                              ),
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.insert_chart_outlined_rounded,
                      color: Colors.black38,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Custom Repetitions',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: IconButton(
                        onPressed: () {},
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
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.insert_chart_outlined_rounded,
                      color: Colors.black38,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Custom Weights',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return TodaysTaskScreen(
                    name: _chosenDateTime,
                  );
                }));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.withOpacity(0.7)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class dateyaer extends StatefulWidget {
  const dateyaer({Key? key}) : super(key: key);

  @override
  State<dateyaer> createState() => _dateyaerState();
}

// ignore: camel_case_types
class _dateyaerState extends State<dateyaer> {
  @override
  Widget build(BuildContext context) {
    DateTime datetime = DateTime.now();

    String datetime4 =
        DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(datetime);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  datetime4,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
