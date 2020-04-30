import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftravel/widgets/destinations.dart';
import 'package:ftravel/widgets/states.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Container(
          padding: EdgeInsets.all(7.0),
          child: Icon(
            Icons.dehaze,
            size: 25.0,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/flight.jpeg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
            ),
            Text(
              'Travel Guide',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 30.0,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Top Destinations',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        color: Colors.black87),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Destination(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'States',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        color: Colors.black87),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            States(),
          ],
        ),
      ),
    );
  }
}
