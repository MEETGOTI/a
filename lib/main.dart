import 'package:firebase_core/firebase_core.dart';

import 'package:fittnessapp/createaccount/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(body: loginpage()),
      ),
    );
  }
}
// StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.hasData) {
//             return home();
//           } else {
//             return loginpage();
//           }
//         },
//       ),