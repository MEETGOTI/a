import 'package:firebase_auth/firebase_auth.dart';
import 'package:fittnessapp/createaccount/create_account.dart';
import 'package:fittnessapp/dashboard/home_page.dart';
import 'package:flutter/material.dart';

class AuthSarvice {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const home();
        } else {
          return const loginpage();
        }
      },
    );
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }

  signIn(String email, String password, context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((val) {
      // ignore: avoid_print
      print('signed in');
    }).catchError((e) {
      // ErrorHandler().errorDialog(context, e);
    });
  }

  singnUp(String email, String password) {
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  resetpasswordLink(String email) {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
