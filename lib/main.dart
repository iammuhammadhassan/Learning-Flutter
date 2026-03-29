import 'package:flutter/material.dart';
import 'package:learn/test.dart';
import 'package:learn/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    initialRoute: Whatsapp.id,
    routes: {
      Whatsapp.id: (context) => const Whatsapp(),
      Test.id: (context) => const Test(),
    },

    );
  }
}
