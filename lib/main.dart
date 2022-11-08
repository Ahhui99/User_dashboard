import 'package:dashboard/views/Event_2.dart';
import 'package:dashboard/views/Home_2.dart';
import 'package:dashboard/views/FAQ.dart';
import 'package:dashboard/views/Home_1.dart';
import 'package:dashboard/views/NGO.dart';
import 'package:dashboard/views/Event_1.dart';
import 'package:dashboard/views/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'views/attendence.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 255, 255, 255),
          elevation: 1.0,
          shape: Border(
            bottom: BorderSide(color: Colors.blue, width: 1),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Index(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/event1': (context) => const Event_1(),
        '/event2': (context) => const Event_2(),
        //to attendance page
        '/attendence': (context) => const Attendence(),
        '/faq': (context) => const FAQ(),
        '/ngo': (context) => const NGOs(),
        '/home': (context) => const Home_2(),
      },
    );
  }
}
