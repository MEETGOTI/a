import 'dart:ui';

import 'package:fittnessapp/yoga/intermediat/badtime/badtime_yoga.dart';
import 'package:fittnessapp/yoga/intermediat/inner_peace/inner_peace.dart';
import 'package:fittnessapp/yoga/intermediat/show_flow/slow_flow.dart';
import 'package:fittnessapp/yoga/intermediat/show_strech/slow_strech.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Intermediat extends StatefulWidget {
  const Intermediat({Key? key}) : super(key: key);

  @override
  State<Intermediat> createState() => _IntermediatState();
}

// ignore: camel_case_types
class _IntermediatState extends State<Intermediat> {
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
                'Intermediat',
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
          "https://www.healthifyme.com/blog/wp-content/uploads/2019/08/Yoga-Poses-for-Weight-Loss-1-1024x600.jpg",
      "time": "Intermediat 15 mins.32Caloris",
    },
    {
      "name": "Slow Strech",
      "image":
          "https://images.hindustantimes.com/img/2021/11/28/1600x900/jose-vazquez-UUf5nxhEhAs-unsplash_1638097578747_1638097601424.jpg",
      "time": "Intermediat 11 mins.26Caloris",
    },
    {
      "name": "Inner Peace",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRYxpbO9-BPYJtyS3qvMcuvlZggPUfF8x2bQ&usqp=CAU",
      "time": "Intermediat 13 mins.29 Caloris",
    },
    {
      "name": "Slow Flow",
      "image":
          "https://media.istockphoto.com/photos/man-and-soul-yoga-lotus-pose-meditation-on-nebula-galaxy-background-picture-id1313456479?b=1&k=20&m=1313456479&s=170667a&w=0&h=dPt49TSikJDm4NqfKd5Cb47GOsWe0pTeXkS4dvUeZbk=",
      "time": "Intermediat 20 mins.36 Caloris",
    },
  ];
  List navi = [
    const bad_time1(),
    const Slow_strech1(),
    const inner_peace1(),
    const Slow_flow1(),
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
                    ),
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
