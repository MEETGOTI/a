import 'package:fittnessapp/bottom_bar/bottom_nevigation.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class notification_page extends StatefulWidget {
  const notification_page({Key? key}) : super(key: key);

  @override
  State<notification_page> createState() => _notification_pageState();
}

// ignore: camel_case_types
class _notification_pageState extends State<notification_page> {
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
                  color: Colors.white,
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
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Notification',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const nots(),
      ]),
    );
  }
}

// ignore: camel_case_types
class nots extends StatefulWidget {
  const nots({Key? key}) : super(key: key);

  @override
  State<nots> createState() => _notsState();
}

// ignore: camel_case_types
class _notsState extends State<nots> {
  List<ItemLists> itemsL = [
    ItemLists(
      a: 'assets/images/Vector.png',
      title: 'Hey, it’s time for lunch',
      discription: 'About 1 minutes ago',
    ),
    ItemLists(
      a: 'assets/images/Vector (1).png',
      title: 'Don’t miss your lowerbody workout',
      discription: 'About 3 hours ago',
    ),
    ItemLists(
      a: 'assets/images/Vector (2).png',
      title: 'Hey, let’s add some meals for your b..',
      discription: 'About 3 hours ago',
    ),
    ItemLists(
      a: 'assets/images/Vector.png',
      title: 'Congratulations, You have finished A..',
      discription: '29 May',
    ),
    ItemLists(
      a: 'assets/images/Vector (3).png',
      title: 'Hey, it’s time for lunch',
      discription: '8 April',
    ),
    ItemLists(
      a: 'assets/images/Vector (2).png',
      title: 'Ups, You have missed your Lowerbo...',
      discription: '3 April',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: ListView.builder(
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
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
              );
            },
          ),
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
