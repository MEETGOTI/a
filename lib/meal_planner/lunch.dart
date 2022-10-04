import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:fittnessapp/meal_planner/cooking.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class lunch extends StatefulWidget {
  const lunch({Key? key}) : super(key: key);

  @override
  State<lunch> createState() => _lunchState();
}

// ignore: camel_case_types
class _lunchState extends State<lunch> {
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
                        return const bottum_page();
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
                'Lunch',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: 60,
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                cursorColor: Colors.grey,
                cursorHeight: 20,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.5),
                    hintText: "Search",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 18),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      width: 40,
                      child: Image.asset('assets/images/serach.png'),
                    )),
              ),
            ),
          ),
        ),
        const page(),
      ]),
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Category',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 75,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: ClipOval(
                              child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.white.withOpacity(0.4),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18),
                          child: SizedBox(
                            height: 25,
                            width: 35,
                            child: Image.asset(
                              'assets/images/Vector (12).png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 65),
                          child: Text(
                            'Salad',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 75,
                          decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: ClipOval(
                              child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.white.withOpacity(0.4),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18),
                          child: SizedBox(
                            height: 25,
                            width: 35,
                            child: Image.asset(
                              'assets/images/Vector (13).png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 22, top: 65),
                          child: Text(
                            'Cake',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 75,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: ClipOval(
                              child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.white.withOpacity(0.4),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18),
                          child: SizedBox(
                            height: 25,
                            width: 35,
                            child: Image.asset(
                              'assets/images/Vector (14).png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 27, top: 65),
                          child: Text(
                            'Pie',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 75,
                          decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: ClipOval(
                              child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.white.withOpacity(0.4),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18),
                          child: SizedBox(
                            height: 25,
                            width: 35,
                            child: Image.asset(
                              'assets/images/Vector (15).png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, top: 65),
                          child: Text(
                            'Smoothies',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommendation',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'for Diet',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.withOpacity(0.3),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset('assets/images/pancakes.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Honey Pancake',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                            'Easy | 30mins | 180kCal',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: InkWell(
                              onTap: () => Get.to(() => const cookings()),
                              child: Container(
                                height: 35,
                                width: 85,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade200,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'View',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple.withOpacity(0.3),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset('assets/images/bread.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Canai Bread',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Text(
                            'Easy | 20mins | 230kCal',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: InkWell(
                              onTap: () => Get.to(() => const cookings()),
                              child: Container(
                                height: 35,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: Colors.purple.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'View',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
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
                  'Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
              ),
            ),
            const list(),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
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
      image: 'assets/images/pancake 2.png',
      title: 'Blueberry Pancake',
      discription: 'Medium | 30mins | 230kCal',
    ),
    ItemLists(
      image: 'assets/images/nigiri 1.png',
      title: 'Salmon Nigiri',
      discription: 'Medium | 20mins | 120kCal',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                leading: Image.asset(itemsL[index].image),
                title: Text(itemsL[index].title),
                subtitle: Text(itemsL[index].discription),
                trailing: InkWell(
                  onTap: () => Get.to(() => const cookings()),
                  child: const Icon(
                    Icons.arrow_circle_right_outlined,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists {
  String image;
  String title;
  String discription;

  ItemLists(
      {required this.title, required this.discription, required this.image});
}
