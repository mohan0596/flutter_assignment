import 'package:flutter/material.dart';
import 'package:flutter_app/ui/placeholderwidget.dart';

import 'formadd/form_add_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: ()=> {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return FormAddScreen();
                }),
              )

            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("My Wallet"),
            ),
            ListTile(
              title: Text("Redeem"),
            ),
            ListTile(
              title: Text("Offers"),
            ),
            ListTile(
              title: Text("10 + 1 plan"),
            ),
            ListTile(
              title: Text("My Gold Mine"),
            ),
            ListTile(
              title: Text("FAQ"),
            ),
            ListTile(
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.blue),
    PlaceholderWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Locate Us'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Contact Us'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Products List')),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Special Discounts'),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
