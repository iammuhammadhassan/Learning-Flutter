import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  static const String id = 'test';
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Test'),
        backgroundColor: Colors.brown,
      ),
      drawer: Drawer(
        
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              
              accountName: Text("Muhammad Hassan"),
              accountEmail: Text("iam.muhammad.hassan0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/122402863?v=4'),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
    );
  }
}
