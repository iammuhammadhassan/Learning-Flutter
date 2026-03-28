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
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 4, 104, 34),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Whatsapp',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      Icon(Icons.more_vert, color: Colors.white),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Icon(Icons.camera_alt_outlined, color: Colors.white),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CHATS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(width: 56, height: 2, color: Colors.white),
                    ],
                  ),
                  Text(
                    'STATUS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'CALLS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        backgroundColor: Color.fromARGB(255, 255, 255, 255),

        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png',
                      ),
                    ),
                    title: Text('John Doe'),
                    subtitle: Text('Hey there! I am using WhatsApp.'),
                    trailing: Text('12:00 PM'),
                  );
                },
                itemCount: 20,
                shrinkWrap: true,
              ),
            ),
          ],
        ),

        floatingActionButton: SizedBox(
          height: 70,
          width: 70,

          child: FloatingActionButton(
            onPressed: () {
              print("Button clicked");
            },
            backgroundColor: Color.fromARGB(255, 4, 104, 34),
            child: Icon(Icons.message, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
