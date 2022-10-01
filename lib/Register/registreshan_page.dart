import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/Register/select.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

// ignore: camel_case_types
class _profile_pageState extends State<profile_page> {
  var gander = "";
  // ignore: prefer_typing_uninitialized_variables
  var birthdate;
  double weight = 0;
  double height = 0;

  final ganderController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   ganderController.dispose();
  //   dateController.dispose();
  //   weightController.dispose();
  //   heightController.dispose();
  //   super.dispose();
  // }

  clearText() {
    ganderController.clear();
    dateController.clear();
    weightController.clear();
    heightController.clear();
  }

  late final _auth = FirebaseAuth.instance;

  CollectionReference users =
      FirebaseFirestore.instance.collection('user_data');

  Future<void> addUser(ganderr, birthdatee, weightt, heightt) {
    return users
        .doc(_auth.currentUser!.uid)
        .collection('user_data')
        .doc("user_details")
        .collection("user_details")
        .add({
          'Gander': ganderr,
          'Age': birthdatee,
          'weight': weightt,
          'height': heightt
        })
        // ignore: avoid_print
        .then((value) => print('User Added'))
        // ignore: avoid_print
        .catchError((error) => print('Failed to Add user: $error'));
  }

  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = "";

    super.initState();
  }

  String dropdownValue = 'Choose Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset('assets/images/Vector-Section.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Center(
                        child: Text(
                      'Let’s complete your profile',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Center(
                        child: Text(
                      'It will help us to know more about you!',
                      style: TextStyle(fontSize: 10),
                    )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 30),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.group_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: InputBorder.none,
                        filled: true,
                      ),
                      dropdownColor: Colors.blue,
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Choose Gender',
                        'Male',
                        'Female',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Date';
                          }
                          return null;
                        },
                        controller: dateController,
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          prefixIcon: const Icon(
                            Icons.calendar_month_outlined,
                          ),
                          hintText: "Date of Birth",
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1960),
                              lastDate: DateTime(2080));

                          if (pickedDate != null) {
                            // ignore: avoid_print
                            String formattedDate =
                                DateFormat('dd-MM-yyyy').format(pickedDate);
                            // ignore: avoid_print
                            setState(() {
                              dateController.text = formattedDate;
                              birthdate = dateController;
                            });
                          } else {
                            // ignore: avoid_print
                            print("Data Is Not Selected");
                          }
                        }),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter weight';
                              }
                              return null;
                            },
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            onChanged: ((value) {
                              setState(() {
                                weight = double.parse(weightController.text);
                              });
                            }),
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              prefixIcon:
                                  const Icon(Icons.monitor_weight_outlined),
                              hintText: "Your Weight",
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'KG',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                colors: [Color(0xffC58BF2), Color(0xFFEEA4CE)]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: TextFormField(
                            controller: heightController,
                            cursorColor: Colors.black,
                            onChanged: ((value) {
                              setState(() {
                                height = double.parse(heightController.text);
                              });
                            }),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              prefixIcon: const Icon(
                                  Icons.vertical_align_center_outlined),
                              hintText: "Your Height",
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'CM',
                                style: TextStyle(color: Colors.white),
                              )),
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                colors: [Color(0xffC58BF2), Color(0xFFEEA4CE)]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 60),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 179, 211, 224),
                          Colors.blue
                        ]),
                      ),
                      child: MaterialButton(
                        height: 50,
                        minWidth: double.infinity,
                        onPressed: () {
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: ((context) {
                          //   return const selected();
                          // })));
                          addUser(dropdownValue, dateController.text, weight,
                              height);

                          clearText();
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
