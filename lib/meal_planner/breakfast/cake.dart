import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cooking.dart';

class Cake extends StatefulWidget {
  const Cake({Key? key}) : super(key: key);

  @override
  State<Cake> createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          list(),
        ],
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
  List imageurl = [];
  List title = [];
  List discription = [];

  @override
  void dispose() {
    imageurl = [];
    title = [];
    discription = [];

    cakes();
    super.dispose();
  }

  void cakes() async {
    // ignore: prefer_typing_uninitialized_variables
    var snapshot;
    snapshot = await FirebaseFirestore.instance
        .collection('meal_planner')
        .doc('TV1AkHm4hRpBUIhxr0ed')
        .collection('non_vag')
        .doc('breakfast')
        .collection('category')
        .doc('cake')
        .collection('cakes')
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
          imageurl.add(storedocs[i]['image']);
          title.add(storedocs[i]['title']);
          discription.add(storedocs[i]['discription']);
        }
        super.setState(() {});
      });
    }
  }

  @override
  void initState() {
    imageurl = [];
    title = [];
    discription = [];

    cakes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: title.length,
        itemBuilder: (BuildContext ctxt, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              elevation: 0.0,
              // color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
              child: ListTile(
                leading: SizedBox(
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 6,
                    child: Image.network(imageurl[index])),
                title: Text(title[index]),
                subtitle: Text(discription[index]),
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
