import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/Register/goal_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class selected extends StatefulWidget {
  const selected({Key? key}) : super(key: key);

  @override
  State<selected> createState() => _selectedState();
}

// ignore: camel_case_types
class _selectedState extends State<selected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
          const new_page(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
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
        ],
      ),
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
  late final _auth = FirebaseAuth.instance;

  final user = FirebaseFirestore.instance.collection("user_data");

  Future<void> addUser() {
    return user
        .doc(_auth.currentUser!.uid)
        .collection('user_data')
        .doc("user_work_data")
        .collection("user_work_data")
        .add({"selected": checkBoxListTileModel[0].title})
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2.1,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Card(
                borderOnForeground: true,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SizedBox(
                            height: 80,
                            width: 30,
                            child: CheckboxListTile(
                              activeColor: Colors.pink,
                              dense: true,
                              value: checkBoxListTileModel[index].isCheck,
                              onChanged: (bool? val) {
                                addUser();

                                itemChange(val as bool, index);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 11,
                            width: MediaQuery.of(context).size.width - 280,
                            child: Image.asset(
                              checkBoxListTileModel[index].img,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        checkBoxListTileModel[index].title,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel(
      {required this.img, required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          img: 'assets/images/calories count.jpg',
          title: 'CALORIES',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/diet plan.jpg',
          title: 'DIET PLAN',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/weight loss.jpg',
          title: 'WEIGHT LOSS',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/weight gain.jpg',
          title: 'WEIGHT GAIN',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/home workout.jpg',
          title: 'HOME WORKOUT',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/muscle gain.jpg',
          title: 'MUSCLE GAIN',
          isCheck: false),
      CheckBoxListTileModel(
          img: 'assets/images/hight increase.jpg',
          title: 'HIGHT INCREASE',
          isCheck: false),
      CheckBoxListTileModel(
        img: 'assets/images/yoga.png',
        title: 'YOGA',
        isCheck: false,
      ),
    ];
  }
}
