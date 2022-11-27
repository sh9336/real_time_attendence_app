import 'package:flutter/material.dart';
import 'package:recs1/screens/home.dart';
import 'package:recs1/screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recs1/screens/Login.dart';
import 'package:recs1/screens/createclass.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: "",
  //       authDomain: "",
  //       projectId: "",
  //       storageBucket: "",
  //       messagingSenderId: "",
  //       appId: "",
  //       measurementId: "",
  //     ),
  //   );
  // } else {
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) =>Login(),
      '/home': (context) =>Home(),
      '/register': (context) => Register(),
      '/class': (context) =>Branch(),
    },
  ));
}



