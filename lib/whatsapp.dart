// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:learn/test.dart';

class Whatsapp extends StatelessWidget {
  static const String id = 'whatsapp';
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 104, 34),
          
          title: const Text(
            'Whatsapp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 12),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 12),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            tabs: [
              Icon(Icons.camera_alt_outlined, color: Colors.white),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),

        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return const ListTile(
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
            ),
            const Center(child: Text('Status updates')),
            const Center(child: Text('Call history')),
          ],
        ),

        floatingActionButton: SizedBox(
          height: 70,
          width: 70,

          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, Test.id);
            },
            backgroundColor: const Color.fromARGB(255, 4, 104, 34),
            child: const Icon(Icons.message, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
