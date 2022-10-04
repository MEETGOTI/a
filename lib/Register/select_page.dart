import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/Register/goal_page.dart';
import 'package:fittnessapp/Register/select.dart';
import 'package:flutter/material.dart';

class Selected extends StatefulWidget {
  const Selected({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SelectedState createState() => _SelectedState();
}

class _SelectedState extends State<Selected> {
  late List<Item> itemList;
  late List<Item> selectedList;

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = [];
    selectedList = [];
    itemList
        .add(Item("assets/images/calories count.jpg", 1, false, 'CALORIES'));
    itemList.add(Item("assets/images/diet plan.jpg", 2, false, 'DIET PLAN'));
    itemList
        .add(Item("assets/images/weight loss.jpg", 3, false, 'WEIGHT LOSS'));
    itemList
        .add(Item("assets/images/weight gain.jpg", 4, false, 'WEIGHT GAIN'));
    itemList
        .add(Item("assets/images/home workout.jpg", 5, false, 'HOME WORKOUT'));
    itemList
        .add(Item("assets/images/muscle gain.jpg", 6, false, 'MUSCLE GAIN'));
    itemList.add(
        Item("assets/images/hight increase.jpg", 7, false, 'HIGHT INCREASE'));
    itemList.add(Item("assets/images/yoga.png", 8, false, 'YOGA'));
  }

  late final _auth = FirebaseAuth.instance;

  final user = FirebaseFirestore.instance.collection("user_data");
  List add = [];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < selectedList.length; i++) {
      add.add(selectedList[i].title);
    }
    List ouput = [];
    setState(() {
      ouput = Set.of(add).toList();
    });

    Future<void> addUser() {
      return user
          .doc(_auth.currentUser!.uid)
          .collection('user_data')
          .doc("user_work_data")
          .collection("user_work_data")
          .add({"selected": ouput})
          // ignore: avoid_print
          .then((value) => print('User Added'))
          // ignore: avoid_print
          .catchError((error) => print('Failed to Add user: $error'));
    }

    return Scaffold(
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 5,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: Column(
            children: const [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'What brings you to ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2.1,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return SelectedItem(
                    item: itemList[index],
                    isSelected: (bool value) {
                      setState(() {
                        if (value) {
                          selectedList.add(itemList[index]);
                        } else {
                          selectedList.remove(itemList[index]);
                        }
                      });

                      // ignore: avoid_print
                    },
                    key: Key(itemList[index].rank.toString()));
              }),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: InkWell(
            onTap: () {
              addUser();
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const goal_page();
              })));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Item {
  String imageUrl;
  int rank;
  bool isCheck;
  String title;

  Item(this.imageUrl, this.rank, this.isCheck, this.title);
}
