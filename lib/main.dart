import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gre_prep/home.dart';
import 'package:gre_prep/opening.dart';
import 'package:gre_prep/otp.dart';
import 'package:gre_prep/phone.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'opening',
      debugShowCheckedModeBanner: false,
      routes: {
        'opening':(context)=> const MyOpening(),
        'phone': (context) => const MyPhone(),
        'otp': (context) => const MyOtp(),
        'home':(context)=> const MyHome()
      },
    );
  }
}
