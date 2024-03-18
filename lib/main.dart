// import 'package:experiments/experiments/exp1.dart';
// import 'package:experiments/experiments/exp2.dart';
// import 'package:experiments/experiments/exp3.dart';
import 'package:chacha/experiments/exp4_5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Material(
            child: Experiment4And5(
                iconNames: ['buddhist', 'temple', 'mosque', 'church'])));
  }
}
