import 'package:flutter/material.dart';
import 'package:loginpagetom/pages/login.dart';

//create home page

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //buatkan drawer
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(title: Text('About'), onTap: () {}),
          ListTile(title: Text('Contact'), onTap: () {}),
          Divider(),
          ListTile(
              title: Text('Logout'),
              onTap: () {
                InkWell(
                  child: Text('Logout'),
                );
                //pushremoveuntil
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }),
        ]),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello World',
              ),
            ]),
      ),
    );
  }
}
