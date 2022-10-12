import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fittnessapp/yoga/expert/badtime/badtime_set.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: camel_case_types
class badtime_start2 extends StatefulWidget {
  const badtime_start2({Key? key}) : super(key: key);

  @override
  State<badtime_start2> createState() => _badtime_start2State();
}

// ignore: camel_case_types
class _badtime_start2State extends State<badtime_start2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const badtime_set2();
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
                  'Show Strech',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const page(),
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
class _pageState extends State<page> with TickerProviderStateMixin {
  var data = [
    {
      "name": "Warm Up",
      "image": "https://i0.wp.com/seven.app/media/images/Squat-Jumps.gif",
      "setsno": "01 of 06",
      "sets": "10",
    },
    {
      "name": "Jumping Jack",
      "image":
          "https://fitnessprogramer.com/wp-content/uploads/2021/05/Jumping-jack.gif",
      "setsno": "02 of 06",
      "sets": "12",
    },
    {
      "name": "Skipping",
      "image":
          "https://fitnessprogramer.com/wp-content/uploads/2021/08/Hanging-Leg-Raises.gif",
      "setsno": "03 of 06",
      "sets": "20",
    },
    {
      "name": "Squats",
      "image":
          "https://fitnessprogramer.com/wp-content/uploads/2021/09/Kettlebell-Windmill.gif",
      "setsno": "04 of 06",
      "sets": "8",
    },
    {
      "name": "Arm Raises",
      "image":
          "https://fitnessprogramer.com/wp-content/uploads/2022/07/Dumbbell-Power-Clean.gif",
      "setsno": "05 of 06",
      "sets": "18",
    },
    {
      "name": "Rest and Drink",
      "image":
          "https://fitnessprogramer.com/wp-content/uploads/2021/02/Seated-Cable-Row.gif",
      "setsno": "06 of 06",
      "sets": "6",
    },
  ];

  int a = 0;
  bool _isPlay = false;
  late AnimationController _controller1;
  final int _duration = 60;
  final CountDownController _controller = CountDownController();

  @override
  void initState() {
    _controller1 = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    super.initState();
  }

  // Dispose the controller
  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.2,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Card(
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.6,
                    width: MediaQuery.of(context).size.width - 36,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            data[a]['name'].toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  indent: 30.0,
                                  endIndent: 10.0,
                                  thickness: 2,
                                ),
                              ),
                              Text(
                                data[a]['setsno'].toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Expanded(
                                child: Divider(
                                  indent: 10.0,
                                  endIndent: 30.0,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 35, left: 10, right: 10),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 2.9,
                            width: MediaQuery.of(context).size.width - 100,
                            child: Image.network(data[a]['image'].toString()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          if (_isPlay == false) {
                            _controller1.forward();
                            _controller.pause();
                            _isPlay = true;
                          } else {
                            _controller1.reverse();
                            _controller.resume();

                            _isPlay = false;
                          }
                        },
                        child: AnimatedIcon(
                            icon: AnimatedIcons.pause_play,
                            progress: _controller1,
                            size: 40,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    height: 160,
                    width: 160,
                    color: Colors.blue,
                    child: CircularPercentIndicator(
                      radius: 53.0,
                      lineWidth: 6.0,
                      animation: true,
                      percent: 1.0,
                      backgroundColor: Colors.white,
                      center: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5, top: 10),
                            child: CircularCountDownTimer(
                              duration: _duration,
                              initialDuration: 0,
                              controller: _controller,
                              width: 45,
                              height: 45,
                              ringColor: Colors.white,
                              ringGradient: null,
                              fillColor:
                                  const Color.fromARGB(255, 232, 226, 233),
                              // fillGradient: const LinearGradient(
                              //   colors: [
                              //     Color.fromARGB(255, 154, 112, 201),
                              //     Color.fromARGB(255, 112, 215, 223),
                              //     Color.fromARGB(255, 154, 112, 201),
                              //   ],
                              // ),
                              backgroundGradient: null,
                              strokeWidth: 1.5,
                              strokeCap: StrokeCap.round,
                              textStyle: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textFormat: CountdownTextFormat.MM_SS,
                              isReverse: false,
                              isReverseAnimation: false,
                              isTimerTextShown: true,
                              autoStart: true,
                              onStart: () {},
                              onComplete: () {},
                              onChange: (String timeStamp) {
                                // debugPrint('Countdown Changed $timeStamp');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              data[a]['sets'].toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      linearGradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 55, 184, 235),
                          Color.fromARGB(255, 66, 119, 209)
                        ],
                      ),

                      // progressColor: Colors.purpleAccent[100],
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (a + 1 == data.length) {
                            a = 0;
                          } else {
                            a += 1;
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        shadows: [],
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
