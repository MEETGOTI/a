import 'package:fittnessapp/profile/porsonal_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 55,
          ),
          profile_1(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class profile_1 extends StatefulWidget {
  const profile_1({Key? key}) : super(key: key);

  @override
  State<profile_1> createState() => _profile_1State();
}

// ignore: camel_case_types
class _profile_1State extends State<profile_1> {
  bool status = true;
  bool status1 = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Image.asset('assets/images/Latest-Pic (1).png'),
              ),
              Column(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Stefani Wong',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 7),
                  child: Text(
                    'Lose a Fat Program',
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ]),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 148, 203, 224),
                          Color.fromARGB(255, 117, 180, 231)
                        ]),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 45,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                '180cm',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Height',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                '65kg',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Weight',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                '22yo',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Age',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 185,
              width: MediaQuery.of(context).size.width - 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const porsonal_data());
                    },
                    child: Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text('Personal Data'),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 10),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        ),
                      ),
                    ]),
                  ),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.library_books_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Achievement'),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ]),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.pie_chart_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Activity History'),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ]),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.insert_chart_outlined_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Workout Progress'),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width - 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Pop-up Notification'),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: FlutterSwitch(
                        activeColor: Colors.purple.shade200,
                        width: 55.0,
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
                  Row(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.dark_mode,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Dark mode'),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: FlutterSwitch(
                        activeColor: Colors.purple.shade200,
                        width: 55.0,
                        height: 26.0,
                        valueFontSize: 10.0,
                        toggleSize: 15.0,
                        value: status1,
                        borderRadius: 30.0,
                        padding: 8.0,
                        // showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status1 = val;
                          });
                        },
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Other',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Contact Us'),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ]),
                  Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Text('Privacy Policy'),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
