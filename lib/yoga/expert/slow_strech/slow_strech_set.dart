import 'package:fittnessapp/yoga/expert/slow_strech/slow_strech.dart';
import 'package:fittnessapp/yoga/expert/slow_strech/slow_strech_start.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class slow_strech_set2 extends StatefulWidget {
  const slow_strech_set2({Key? key}) : super(key: key);

  @override
  State<slow_strech_set2> createState() => _slow_strech_set2State();
}

// ignore: camel_case_types
class _slow_strech_set2State extends State<slow_strech_set2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                        return const Slow_strech2();
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
                'Exercises',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const list(),
        const page(),
      ]),
    );
  }
}

// ignore: camel_case_types
class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

// ignore: camel_case_types
class _listState extends State<list> {
  List<ItemLists> itemsL = [
    ItemLists(
      a: 'assets/images/Vector-Exercises.png',
      title: 'Warm Up',
      discription: '05:00',
    ),
    ItemLists(
      a: 'assets/images/Vector-Exercises (1).png',
      title: 'Jumping Jack',
      discription: '12x',
    ),
    ItemLists(
      a: 'assets/images/Vector-Exercises (2).png',
      title: 'Skipping',
      discription: '15x',
    ),
    ItemLists(
      a: 'assets/images/Vector-Exercises (3).png',
      title: 'Squats',
      discription: '20x',
    ),
    ItemLists(
      a: 'assets/images/Vector-Exercises (5).png',
      title: 'Arm Raises',
      discription: '00:53',
    ),
    ItemLists(
      a: 'assets/images/Vector-Exercises (4).png',
      title: 'Rest and Drink',
      discription: '02:00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: itemsL.length,
                    itemBuilder: (BuildContext ctxt, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          elevation: 0.0,
                          child: ListTile(
                            leading: Image.asset(itemsL[index].a),
                            title: Text(itemsL[index].title),
                            subtitle: Text(itemsL[index].discription),
                          ),
                        ),
                      );
                    },
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

class ItemLists {
  String a;
  String title;
  String discription;

  ItemLists({required this.title, required this.discription, required this.a});
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
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: InkWell(
            onTap: () => Get.to(const slow_strech_start2()),
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
                  'Start',
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
