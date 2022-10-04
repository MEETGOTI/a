import 'dart:ui';

import 'package:fittnessapp/yoga/expert/badtime/badtime_yoga.dart';
import 'package:fittnessapp/yoga/expert/inner_peace/inner_peace.dart';
import 'package:fittnessapp/yoga/expert/slow_flow/slow_flow.dart';
import 'package:fittnessapp/yoga/expert/slow_strech/slow_strech.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class expert extends StatefulWidget {
  const expert({Key? key}) : super(key: key);

  @override
  State<expert> createState() => _expertState();
}

// ignore: camel_case_types
class _expertState extends State<expert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Expert',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
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
class _pageState extends State<page> {
  var data = [
    {
      "name": "Badtime yoga",
      "image":
          "https://assets.thehansindia.com/h-upload/2022/06/20/1600x960_1298751-yoga.jpg",
      "time": "Expert 20 mins.40 Caloris",
    },
    {
      "name": "Slow Strech",
      "image":
          "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2021/06/yoga-1624008293.jpg",
      "time": "Expert 15 mins.30 Caloris",
    },
    {
      "name": "Inner Peace",
      "image":
          "https://www.baliecostay.com/wp-content/uploads/2017/04/Yoga-Bali-Eco-Stay.jpg",
      "time": "Expert 14 mins.26 Caloris",
    },
    {
      "name": "Slow Flow",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk-j64684kocw0ZqJE3O05MEwCFzV9HOQTdxaetGnTQ9rKEJrV0a56CIMN5pGEjzEsUpM&usqp=CAU",
      "time": "Expert 9 mins.22Caloris",
    },
  ];
  List navi = [
    const bad_time2(),
    const Slow_strech2(),
    const inner_peace2(),
    const Slow_flow2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int a = 0; a < data.length; a++) ...[
              InkWell(
                onTap: () => Get.to(navi[a]),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(data[a]['image'].toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0)),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 70),
                          child: Text(
                            data[a]['name'].toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            data[a]['time'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
