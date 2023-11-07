import 'package:flutter/material.dart';
import 'package:blood_data/project/home.dart';
import 'package:blood_data/project/add.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:blood_data/firebase_options.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
 void main() async{ // awitt ullh kond
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
 );
    runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App ",
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/add':(context) => AddUser(),
      },
      
    );
  }
}