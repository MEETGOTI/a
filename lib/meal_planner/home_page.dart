import 'package:fittnessapp/meal_planner/lunch.dart';
import 'package:fittnessapp/meal_planner/meal_chart.dart';
import 'package:fittnessapp/meal_planner/meal_schedule.dart';
import 'package:flutter/material.dart';

import 'breakfast.dart';

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
        SizedBox(
          height: 35,
        ),
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
                  padding: EdgeInsets.only(left: 30),
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
                  padding: const EdgeInsets.only(right: 35),
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
              padding: EdgeInsets.only(right: 25, left: 20),
              child: SizedBox(height: 200, child: meal_charts()),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                height: 40,
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const meal_schedules();
                            }),
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 60,
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
                  padding: EdgeInsets.only(left: 30),
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
                  padding: const EdgeInsets.only(right: 35),
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
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Daily Meal Schedule',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.blue.withOpacity(0.3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Breakfast',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  '120+ Foods',
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const breakfasts();
                                    }));
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade200,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                          child: Image.asset('assets/images/Vector (10).png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 170,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Lunch',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  '130+ Foods',
                                  style: TextStyle(color: Colors.black45),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const lunch();
                                    }));
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.purple.shade200,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                          child: Image.asset('assets/images/Vector (11).png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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

class ItemLists {
  String image;
  String title;
  String discription;

  ItemLists(
      {required this.title, required this.discription, required this.image});
}
