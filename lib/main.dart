import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 104, 34),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Whatsapp'),
                  Row(children: [Icon(Icons.search), Icon(Icons.more_vert)]),
                ],
              ),
            ],
          ),
        ),

        backgroundColor: Color.fromARGB(255, 255, 255, 255),

        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
