import 'package:amitfinal/CartPage.dart';
import 'package:amitfinal/GridViewPage.dart';
import 'package:amitfinal/LoginPage.dart';
import 'package:amitfinal/MenuPage.dart';
import 'package:flutter/material.dart';

import 'HomePage2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  String title = "TODO App";

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage2(),
    GridViewPage(),
    CartPage(),
    MenuPage(),
  ];

  List <Text> title1 = [
    Text('Home'),
    Text('Categories'),
    Text('Cart'),
    Text('Settings')
  ];

  get value => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle: TextStyle(color: Colors.black),
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.amber[700], size: 35),
            selectedItemColor: Colors.amberAccent,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            iconSize: 25,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,
                color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category,
                  color: Colors.black,),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded,
                  color: Colors.black,),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu,
                  color: Colors.black,),
                label: 'Menu',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}