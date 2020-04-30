import 'package:flutter/material.dart';
import 'package:ftravel/photos.dart';
import 'homepage.dart';
import 'photos.dart';

class MajorPage extends StatefulWidget {
  @override
  _MajorPageState createState() => _MajorPageState();
}

class _MajorPageState extends State<MajorPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    Photos(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Overview"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text("Gallery"),
          ),
        ],
      ),
    );
  }
}
