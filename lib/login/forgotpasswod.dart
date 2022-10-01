import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/login/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  var email = "";

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Password Reset Email has been sent !',
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: avoid_print
        print('No user found for that email.');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              'No user found for that email.',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 3.5,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: const Text(
              'Reset Link will be sent to your email id !',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        controller: emailController,
                        onChanged: ((value) {
                          setState(() {
                            email = emailController.text;
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
                    Container(
                      margin: const EdgeInsets.only(left: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  email = emailController.text;
                                });
                                resetPassword();
                              }
                            },
                            child: const Text(
                              'Send Email',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                          TextButton(
                            onPressed: () => {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, a, b) =>
                                        const login(),
                                    transitionDuration:
                                        const Duration(seconds: 0),
                                  ),
                                  (route) => false)
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
