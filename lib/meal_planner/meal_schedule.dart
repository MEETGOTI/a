import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: camel_case_types
class meal_schedules extends StatefulWidget {
  const meal_schedules({Key? key}) : super(key: key);

  @override
  State<meal_schedules> createState() => _meal_schedulesState();
}

// ignore: camel_case_types
class _meal_schedulesState extends State<meal_schedules> {
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
                    Navigator.push(
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
                'Meal Schedule',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const date_time(),
        const page(),
      ]),
    );
  }
}

// ignore: camel_case_types
class date_time extends StatefulWidget {
  const date_time({Key? key}) : super(key: key);

  @override
  State<date_time> createState() => _date_timeState();
}

// ignore: camel_case_types
class _date_timeState extends State<date_time> {
  final todaysDate = DateTime.now();
  late int _dateIndex;
  final double _width = 50;
  final double _margin = 43;
  final _scrollController = ScrollController();
  late int days;

  void getDates() {
    final date = DateTime(todaysDate.year, todaysDate.month);
    days = DateTimeRange(
      start: date,
      end: DateTime(todaysDate.year, todaysDate.month + 1),
    ).duration.inDays;
    _dateIndex = todaysDate.day;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        _scroll();
      },
    );
    setState(() {});
  }

  void _scroll() {
    _scrollController.animateTo(
      (days * _dateIndex.toDouble()) +
          (_dateIndex.toDouble() * _width) -
          (_dateIndex * _margin),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    getDates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDateHeader(context),
          const SizedBox(
            height: 10,
          ),
          _buildDateDays(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Row _buildDateHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat("MMMM, dd").format(todaysDate),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox _buildDateDays() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days,
        controller: _scrollController,
        itemBuilder: (context, index) {
          final monthDate =
              DateTime(todaysDate.year, todaysDate.month, index + 1);

          return InkWell(
            onTap: () {
              _dateIndex = index;
              _scroll();
            },
            child: Container(
              width: 50,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                //  color: Colors.white,
                color: todaysDate.day == (index + 1)
                    ? Colors.blue.shade200
                    : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0.2,
                    //   offset: const Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${index + 1}",
                    style: TextStyle(
                        fontSize: 20,
                        color: todaysDate.day == (index + 1)
                            ? Colors.white
                            : null),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    DateFormat('EEE').format(monthDate),
                    style: TextStyle(
                      fontSize: 15,
                      color:
                          todaysDate.day == (index + 1) ? Colors.white : null,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Breakfast',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "2 meals | 230 calories",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const list1(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lunch',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "2 meals | 500 calories",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const list2(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Snacks',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "2 meals | 140 calories",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const list3(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dinner',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "2 meals | 120 calories",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const list4(),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today Meal Nutritions',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Calories'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/calories.png'),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          '320 kCal',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 40,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          animation: true,
                          lineHeight: 14.0,
                          animationDuration: 2500,
                          percent: 0.9,
                          progressColor: Colors.blue.withOpacity(0.6),
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Proteins'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/Proteins-Icon.png'),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          '300g',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 40,
                          animation: true,
                          lineHeight: 14.0,
                          animationDuration: 2500,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          percent: 0.4,
                          progressColor: Colors.blue.withOpacity(0.6),
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Fats'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/Fat-Icon.png'),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          '140g',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 40,
                          animation: true,
                          lineHeight: 14.0,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          animationDuration: 2500,
                          percent: 0.8,
                          progressColor: Colors.blue.withOpacity(0.6),
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Carbo'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/Carbo-Icon.png'),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          '140g',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 40,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          animation: true,
                          lineHeight: 14.0,
                          animationDuration: 2500,
                          percent: 0.5,
                          progressColor: Colors.blue.withOpacity(0.6),
                          barRadius: const Radius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class list1 extends StatefulWidget {
  const list1({Key? key}) : super(key: key);

  @override
  State<list1> createState() => _list1State();
}

// ignore: camel_case_types
class _list1State extends State<list1> {
  List<ItemLists> itemsL = [
    ItemLists(
      image: 'assets/images/pancakes (1).png',
      title: 'Honey Pancake',
      discription: '07:00am',
    ),
    ItemLists(
      image: 'assets/images/Group (1).png',
      title: 'Coffee',
      discription: '07:30am',
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

// ignore: camel_case_types
class list2 extends StatefulWidget {
  const list2({Key? key}) : super(key: key);

  @override
  State<list2> createState() => _list2State();
}

// ignore: camel_case_types
class _list2State extends State<list2> {
  List<ItemLists1> itemsL = [
    ItemLists1(
      image: 'assets/images/chicken steak.png',
      title: 'Chicken Steak',
      discription: '01:00pm',
    ),
    ItemLists1(
      image: 'assets/images/glass-of-milk 1 (1).png',
      title: 'Milk',
      discription: '01:20pm',
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
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists1 {
  String image;
  String title;
  String discription;

  ItemLists1(
      {required this.title, required this.discription, required this.image});
}

// ignore: camel_case_types
class list3 extends StatefulWidget {
  const list3({Key? key}) : super(key: key);

  @override
  State<list3> createState() => _list3State();
}

// ignore: camel_case_types
class _list3State extends State<list3> {
  List<ItemLists2> itemsL = [
    ItemLists2(
      image: 'assets/images/Vector (16).png',
      title: 'Orange',
      discription: '04:30pm',
    ),
    ItemLists2(
      image: 'assets/images/apple pie.png',
      title: 'Apple Pie',
      discription: '04:40pm',
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
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists2 {
  String image;
  String title;
  String discription;

  ItemLists2(
      {required this.title, required this.discription, required this.image});
}

// ignore: camel_case_types
class list4 extends StatefulWidget {
  const list4({Key? key}) : super(key: key);

  @override
  State<list4> createState() => _list4State();
}

// ignore: camel_case_types
class _list4State extends State<list4> {
  List<ItemLists3> itemsL = [
    ItemLists3(
      image: 'assets/images/salad.png',
      title: 'Salad',
      discription: '07:10pm',
    ),
    ItemLists3(
      image: 'assets/images/oatmeal.png',
      title: 'Oatmeal',
      discription: '08:10pm',
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
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemLists3 {
  String image;
  String title;
  String discription;

  ItemLists3(
      {required this.title, required this.discription, required this.image});
}
