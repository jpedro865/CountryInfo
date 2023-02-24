import 'package:flutter/material.dart';

import 'startscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(12, 19, 31, 100),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(12, 19, 31, 100),
            title: const Text('Countries info'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: StartScreen(),
          )
        ),
    );
  }
}
