import 'package:bottomnavigationbar/HomePage.dart';
import 'package:bottomnavigationbar/SearchPage.dart';
import 'package:bottomnavigationbar/SettingsPage.dart';
import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _CurrentIndex = 0;

  void onTapped(int index) {
    setState(() {
      _CurrentIndex = index;
    });
  }

  List Screens = [
    HomePage(),
    SearchPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_CurrentIndex],
      bottomNavigationBar: BottomBar(context),
    );
  }

  BottomNavigationBar BottomBar(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTapped,
      currentIndex: _CurrentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ],
    );
  }
}
