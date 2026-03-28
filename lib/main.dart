import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              'Flutter App',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 30,color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              SizedBox(height: 20),
              Container(height: 100, width: 100, color: Colors.green),
              SizedBox(height: 20),
              Container(height: 100, width: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
