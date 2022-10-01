import 'dart:ui';

// ignore: unused_import
import 'package:fittnessapp/yoga/beginner/badtime/badtime_yoga.dart';
import 'package:fittnessapp/yoga/beginner/inner_peace/inner_peace.dart';
import 'package:fittnessapp/yoga/beginner/show_flow/slow_flow.dart';
import 'package:fittnessapp/yoga/beginner/show_strech/slow_strech.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class beginner extends StatefulWidget {
  const beginner({Key? key}) : super(key: key);

  @override
  State<beginner> createState() => _beginnerState();
}

// ignore: camel_case_types
class _beginnerState extends State<beginner> {
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
                'Beginner',
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
          "https://cdn.pixabay.com/photo/2018/04/21/15/21/yoga-3338691__340.jpg",
      "time": "Bigineer 9 mins.22 Caloris",
    },
    {
      "name": "Slow Strech",
      "image":
          "https://yogascapes.com/wp-content/uploads/2017/04/DSC_7506-555x405.jpg",
      "time": "Bigineer 15 mins.21 Caloris",
    },
    {
      "name": "Inner Peace",
      "image":
          "https://images.pexels.com/photos/1051838/pexels-photo-1051838.jpeg?cs=srgb&dl=pexels-prasanth-inturi-1051838.jpg&fm=jpg",
      "time": "Bigineer 7 mins.18 Caloris",
    },
    {
      "name": "Slow Flow",
      "image":
          "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/08/116.jpg",
      "time": "Bigineer 10 mins.24 Caloris",
    },
  ];
  List navi = [
    const bad_time(),
    const Slow_strech(),
    const inner_peace(),
    const Slow_flow(),
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
                      child: Opacity(
                        opacity: 1,
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
