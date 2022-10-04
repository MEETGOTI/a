import 'package:fittnessapp/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class porsonal_data extends StatefulWidget {
  const porsonal_data({Key? key}) : super(key: key);

  @override
  State<porsonal_data> createState() => _porsonal_dataState();
}

// ignore: camel_case_types
class _porsonal_dataState extends State<porsonal_data> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: page(),
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
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        ClipOval(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'https://assets-news.housing.com/news/wp-content/uploads/2022/01/11100351/Ganpati-decoration-at-home-Easy-Ganesha-decoration-ideas-for-background-and-mandap-FB-1200x700-compressed-686x400.jpg',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: TextField(
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: "Enter your name",
              filled: true,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.green, width: 2.0),
              // ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: TextField(
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              hintText: "Enter your email",
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: InkWell(
            onTap: () => Get.to(() => const profile()),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
