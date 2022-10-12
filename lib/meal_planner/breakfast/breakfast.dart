import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:fittnessapp/meal_planner/breakfast/cake.dart';
import 'package:fittnessapp/meal_planner/cooking.dart';
import 'package:fittnessapp/meal_planner/breakfast/juice.dart';
import 'package:fittnessapp/meal_planner/breakfast/pie.dart';
import 'package:fittnessapp/meal_planner/breakfast/salad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types, must_be_immutable
class breakfasts extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String time_meal;

  // ignore: non_constant_identifier_names
  breakfasts({Key? key, required this.time_meal}) : super(key: key);

  @override
  State<breakfasts> createState() => _breakfastsState();
}

// ignore: camel_case_types
class _breakfastsState extends State<breakfasts> {
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                widget.time_meal,
                style: const TextStyle(
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
                  hintStyle: const TextStyle(
                      color: Color.fromRGBO(158, 158, 158, 1), fontSize: 18),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(15),
                    width: 40,
                    child: Image.asset('assets/images/serach.png'),
                  ),
                ),
              ),
            ),
          ),
        ),
        page(time_meal: widget.time_meal),
      ]),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class page extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String time_meal;
  // ignore: non_constant_identifier_names
  page({Key? key, required this.time_meal}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

// ignore: camel_case_types
class _pageState extends State<page> {
  var page = [
    const Salad(),
    const Cake(),
    const Pie(),
    const Juice(),
  ];
  var page1 = [
    const cookings(),
    const cookings(),
  ];

  List image = [];
  List name = [];
  List title = [];
  List imageurl = [];
  List names = [];

  @override
  void dispose() {
    image = [];
    name = [];
    title = [];
    imageurl = [];
    names = [];

    coustom();
    Breakfast();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  void Breakfast() async {
    // ignore: prefer_typing_uninitialized_variables
    var snapshot;
    snapshot = await FirebaseFirestore.instance
        .collection('meal_planner')
        .doc('TV1AkHm4hRpBUIhxr0ed')
        .collection('non_vag')
        .doc(widget.time_meal)
        .collection('custom_meal_schedule')
        .get();

    List storedoc = [];
    snapshot.docs.map((DocumentSnapshot document) {
      Map a = document.data() as Map<String, dynamic>;
      storedoc.add(a);
      a['id'] = document.id;
    }).toList();

    if (mounted) {
      setState(() {
        for (var i = 0; i < storedoc.length; i++) {
          image.add(storedoc[i]['image']);
          name.add(storedoc[i]['name']);
          title.add(storedoc[i]['title']);
        }
        super.setState(() {});
      });
    }
  }

  void coustom() async {
    // ignore: prefer_typing_uninitialized_variables
    var snapshot;
    snapshot = await FirebaseFirestore.instance
        .collection('meal_planner')
        .doc('TV1AkHm4hRpBUIhxr0ed')
        .collection('non_vag')
        .get();

    List storedocs = [];
    snapshot.docs.map((DocumentSnapshot document) {
      Map a = document.data() as Map<String, dynamic>;
      storedocs.add(a);
      a['id'] = document.id;
    }).toList();

    if (mounted) {
      setState(() {
        for (var i = 0; i < storedocs.length; i++) {
          imageurl.add(storedocs[i]['category'][i]['image']);
          names.add(storedocs[i]['category'][i]['name']);
          // ignore: avoid_print
          print(names[i]);
        }
        super.setState(() {});
      });
    }
  }

  @override
  void initState() {
    image = [];
    name = [];
    title = [];
    imageurl = [];
    names = [];

    coustom();
    Breakfast();
    super.initState();
  }

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
              padding: EdgeInsets.only(left: 20),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    for (int a = 0; a < imageurl.length; a++) ...[
                      InkWell(
                        onTap: () => Get.to(() => page[a]),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 8.5,
                              width: MediaQuery.of(context).size.width / 4.8,
                              decoration: BoxDecoration(
                                  color: a % 2 == 0
                                      ? Colors.blue.withOpacity(0.3)
                                      : Colors.purple.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: ClipOval(
                                  child: Container(
                                height: MediaQuery.of(context).size.height / 18,
                                width: MediaQuery.of(context).size.width / 7.7,
                                color: Colors.white.withOpacity(0.4),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                                width: MediaQuery.of(context).size.width / 10,
                                child: Image.asset(
                                  imageurl[a],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Text(
                                names[a],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
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
              padding: EdgeInsets.only(left: 20),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    for (int b = 0; b < image.length; b++) ...[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3.7,
                          width: MediaQuery.of(context).size.height / 4.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: b % 2 == 0
                                ? Colors.blue.withOpacity(0.3)
                                : Colors.purple.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset(
                                  image[b],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  name[b],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                title[b],
                                style: const TextStyle(color: Colors.black54),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: InkWell(
                                  onTap: () => Get.to(() => page1[b]),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 25,
                                    width:
                                        MediaQuery.of(context).size.height / 8,
                                    decoration: BoxDecoration(
                                        color: b % 2 == 0
                                            ? Colors.blue.withOpacity(0.3)
                                            : Colors.purple.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                    ],
                    const SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
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
              //   color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
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
