import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../bottom_bar/bottom_nevigation.dart';

// ignore: camel_case_types
class enter extends StatefulWidget {
  const enter({Key? key}) : super(key: key);

  @override
  State<enter> createState() => _enterState();
}

// ignore: camel_case_types
class _enterState extends State<enter> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    late final _auth = FirebaseAuth.instance;
    final user = _auth.currentUser;
    final uid = user!.uid;
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('user_data')
            .doc(uid)
            .collection('user_data')
            .doc("user_register_data")
            .collection("user_register_data")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            // ignore: avoid_print
            print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            a['id'] = document.id;
          }).toList();

          return Scaffold(
              body: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Image.asset('assets/images/Group.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'welcome,  ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  storedocs[0]['First name'].toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  storedocs[0]['Last name'].toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: RichText(
                text: const TextSpan(
                  text:
                      'You are all set now, let’s reach your goals together with us',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const bottum_page();
                      }),
                    );
                  },
                  child: const Text(
                    "Go To Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ]));
        });
  }
}
