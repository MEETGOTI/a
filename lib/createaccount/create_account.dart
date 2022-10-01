import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/Register/registreshan_page.dart';

import 'package:fittnessapp/login/login.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

// ignore: camel_case_types
class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();

  var name1 = "";
  var name2 = "";
  var email = "";
  var password = "";

  final name1controller = TextEditingController();
  final name2controller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  // ignore: must_call_super
  void dispose() {
    name1controller.dispose();
    name2controller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  Future registration() async {
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {
                FirebaseFirestore.instance
                    .collection("user_data")
                    .doc(value.user!.uid)
                    .collection("user_data")
                    .doc("user_register_data")
                    .collection("user_register_data")
                    .add({
                  "First name": name1,
                  "Last name": name2,
                  "Email": email,
                  "Password": password
                })
              });
      // ignore: avoid_print
      print(userCredential);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Registered Successfully. Please Login..",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      );
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const profile_page(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Password Provided is too Weak",
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Account Already exists",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  clearText() {
    name1controller.clear();
    name2controller.clear();
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  bool hidePassword = true;
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text('Hey there,'),
                  ),
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      controller: name1controller,
                      onChanged: ((value) {
                        setState(() {
                          name1 = name1controller.text;
                        });
                      }),
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                        ),
                        hintText: "First Name",
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                      controller: name2controller,
                      onChanged: ((value) {
                        setState(() {
                          name2 = name2controller.text;
                        });
                      }),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                        ),
                        hintText: "Last Name",
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                      controller: emailcontroller,
                      onChanged: ((value) {
                        setState(() {
                          email = emailcontroller.text;
                        });
                      }),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                        ),
                        hintText: "Email",
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 10),
                    child: TextFormField(
                      controller: passwordcontroller,
                      onChanged: ((value) {
                        setState(() {
                          password = passwordcontroller.text;
                        });
                      }),
                      validator: (value) {
                        if (value != null && value.length < 7) {
                          return 'Enter min. 7 characters';
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      obscureText: hidePassword,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outlined,
                        ),
                        suffixIcon: IconButton(
                          icon: hidePassword
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                        ),
                        hintText: "Password",
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Checkbox(
                              value: ischecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  ischecked = value!;
                                });
                              }),
                        ),
                      ),
                      Flexible(
                        child: RichText(
                          text: const TextSpan(
                            text: 'By continuing you accept our ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Term of Use',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          registration();
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              name1 = name1controller.text;
                              name2 = name2controller.text;
                              email = emailcontroller.text;
                              password = passwordcontroller.text;
                            });
                          }

                          clearText();
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Divider(
                          height: 70,
                          color: Colors.black,
                        ),
                      )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Or"),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Divider(
                          height: 70,
                          color: Colors.black,
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 50,
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              'assets/images/google.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 45,
                          child: SizedBox(
                            height: 48,
                            width: 48,
                            child: Image.asset(
                              'assets/images/facebook.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 35),
                    child: GestureDetector(
                      onTap: () {
                        // await FirebaseAuth.instance.signOut();
                        // // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const login();
                          }),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                              ),
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
        ),
      ),
    );
  }
}
