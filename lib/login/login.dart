// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/login/forgotpasswod.dart';
import 'package:fittnessapp/login/login_enter.dart';

import 'package:flutter/material.dart';

import '../createaccount/create_account.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  final _fromkey = GlobalKey<FormState>();

  var email = "";
  var password = "";

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  clearText() {
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const enter(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Text('Hey there,'),
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Form(
              key: _fromkey,
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
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
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
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
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
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
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
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
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const ForgotPassword();
                    }),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Forgot your password?',
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, right: 30, left: 30),
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
                    if (_fromkey.currentState!.validate()) {
                      setState(() {
                        email = emailcontroller.text;
                        password = passwordcontroller.text;
                      });
                      userLogin();
                    }

                    clearText();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
              padding: const EdgeInsets.only(top: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const loginpage();
                    }),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Don’t have an account yet? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register',
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
    );
  }
}
