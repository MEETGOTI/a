import 'package:fittnessapp/yoga/intermediat/intermediat.dart';
import 'package:fittnessapp/yoga/intermediat/show_strech/slow_strech_set.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Slow_strech1 extends StatefulWidget {
  const Slow_strech1({Key? key}) : super(key: key);

  @override
  State<Slow_strech1> createState() => _Slow_strech1State();
}

// ignore: camel_case_types
class _Slow_strech1State extends State<Slow_strech1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const Intermediat();
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
                  'Slow Strech',
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
            height: 10,
          ),
          const page(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Slow_strech_set1();
                }));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
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
class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

// ignore: camel_case_types
class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                    'https://images.hindustantimes.com/img/2021/11/28/1600x900/jose-vazquez-UUf5nxhEhAs-unsplash_1638097578747_1638097601424.jpg'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.alarm_rounded,
                          size: 22,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 5),
                              child: Text(
                                'Duration',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2, left: 5),
                              child: Text(
                                '11 Min',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.bar_chart_rounded,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 4),
                              child: Text(
                                'Difficulty',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2, left: 4),
                              child: Text(
                                'Intermediat',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1.5,
              endIndent: 25,
              indent: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Slow strech',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: RichText(
                text: const TextSpan(
                  text:
                      'Inner peace yoga Center is dedicated to halping all people create a balanced life using traditional ',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Read More...',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        // decoration:
                        //     TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Benefits',
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ClipOval(
                    child: Container(
                      height: 8,
                      width: 8,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Help strangthen the last and triceps',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ClipOval(
                    child: Container(
                      height: 8,
                      width: 8,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Help improve posture',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Targeted muscles',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 65,
              width: MediaQuery.of(context).size.width - 45,
              child: Wrap(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Gslutes',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Biceps',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 30,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Quadriceps',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 30,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Core',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 30,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Deltolds',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 5),
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Latissemus dorsi',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reqired equipment',
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ClipOval(
                    child: Container(
                      height: 8,
                      width: 8,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Yoga mat',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
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
