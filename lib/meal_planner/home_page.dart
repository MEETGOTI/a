import 'package:fittnessapp/meal_planner/meal_chart.dart';
import 'package:fittnessapp/meal_planner/meal_schedule.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'breakfast/breakfast.dart';

// ignore: camel_case_types
class meal_plan extends StatefulWidget {
  const meal_plan({Key? key}) : super(key: key);

  @override
  State<meal_plan> createState() => _meal_planState();
}

// ignore: camel_case_types
class _meal_planState extends State<meal_plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        new_page(),
      ]),
    );
  }
}

// ignore: camel_case_types
class new_page extends StatefulWidget {
  const new_page({Key? key}) : super(key: key);

  @override
  State<new_page> createState() => _new_pageState();
}

// ignore: camel_case_types
class _new_pageState extends State<new_page> {
  String dropdownvalue = 'Wekly';
  String dropdownvalue1 = 'Breakfast';

  var items1 = [
    'Breakfast',
    'Lunch',
    'Snacks',
    'Dinner',
  ];

  var items = [
    'Wekly',
    'Monthly',
    'Yearly',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Meal Nutritions',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              dropdownColor: Colors.purple.shade200,
                              borderRadius: BorderRadius.circular(20),
                              value: dropdownvalue,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(height: 200, child: meal_charts()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 163, 206, 223),
                      Colors.blue.shade300,
                    ]),
                    borderRadius: BorderRadius.circular(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Daily Meal Schedule',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromARGB(255, 250, 249, 249),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () => Get.to(() => const meal_schedules()),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                              color: Colors.purple.shade200,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'check',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Today Meals',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              dropdownColor: Colors.purple.shade200,
                              borderRadius: BorderRadius.circular(20),
                              value: dropdownvalue1,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              items: items1.map((String items1) {
                                return DropdownMenuItem(
                                  value: items1,
                                  child: Text(
                                    items1,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue1 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const list(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Custom Meal Schedule',
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
            const Page2(),
            const SizedBox(
              height: 10,
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
      image: 'assets/images/nigiri 1.png',
      title: 'Salmon Nigiri',
      discription: 'Today | 7am',
    ),
    ItemLists(
      image: 'assets/images/glass-of-milk 1.png',
      title: 'Lowfat Milk',
      discription: 'Today | 8am',
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
                trailing: const Icon(
                  Icons.notifications_active,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var items = [
    {
      "images": 'assets/images/Vector (10).png',
      "titles": 'Breakfast',
      "discriptions": '120+ Foods',
    },
    {
      "images": 'assets/images/Vector (11).png',
      "titles": 'Lunch',
      "discriptions": '130+ Foods',
    },
    {
      "images": 'assets/images/Vector (11).png',
      "titles": 'Dinner',
      "discriptions": '100+ Foods',
    },
  ];

  var navi = ['breakfast', 'dinner', 'lunch'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int a = 0; a < items.length; a++) ...[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.7,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(70),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: a % 2 == 0
                          ? Colors.blue.withOpacity(0.3)
                          : Colors.purple.withOpacity(0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            items[a]['titles'].toString(),
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            items[a]['discriptions'].toString(),
                            style: const TextStyle(color: Colors.black45),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 10),
                          child: InkWell(
                            onTap: () => Get.to(
                              () => breakfasts(time_meal: navi[a]),
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 30,
                              width: MediaQuery.of(context).size.width / 4.7,
                              decoration: BoxDecoration(
                                  color: a % 2 == 0
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.purple.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Select',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 5),
                    child: Image.asset(
                      items[a]['images'].toString(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
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
