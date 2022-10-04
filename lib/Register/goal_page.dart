// ignore: file_names
import 'package:fittnessapp/Register/slider.dart';
import 'package:fittnessapp/login/login_enter.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class goal_page extends StatefulWidget {
  const goal_page({Key? key}) : super(key: key);

  @override
  State<goal_page> createState() => _goal_pageState();
}

// ignore: camel_case_types
class _goal_pageState extends State<goal_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'What is your goal ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RichText(
                  text: const TextSpan(
                    text: 'It will help us to choose a best',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  ' program for you',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const banner(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 179, 211, 224),
                      Colors.blue
                    ]),
                  ),
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const enter();
                        }),
                      );
                    },
                    child: const Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
