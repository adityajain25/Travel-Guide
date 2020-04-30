import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:ftravel/cities.dart';

class States extends StatefulWidget {
  @override
  _StatesState createState() => _StatesState();
}

class _StatesState extends State<States> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/indiaplaces.json"),
              builder: (context, snapshot) {
                var mydata = json.decode(snapshot.data.toString());
                if (mydata == null) {
                  return Center(
                    child: Text(
                      "Loading",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  );
                } else {
                  return ListView.builder(
                      itemCount: mydata.length,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => City(
                                  state: mydata[index],
                              )),
                            );
                          },
                           child: Padding(
                             padding: const EdgeInsets.only(left:5.0,right: 5.0),
                             child: Container(
                               margin: EdgeInsets.only(bottom: 10.0),
                               decoration: BoxDecoration(
                                 color: Color(0xffE9F4F9),
                                   borderRadius: BorderRadius.circular(20),
                               ),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: <Widget>[
                                   ClipRRect(
                                     borderRadius: BorderRadius.only(
                                         topLeft: Radius.circular(25),
                                         bottomLeft: Radius.circular(25)),
                                     child: Image.asset("assets/images/tourist.jpg",fit: BoxFit.cover,width:110,height: 90,)
                                   ),
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            mydata[index]['state'],
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Activites",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff89A097)),
                                          ),
                                        ],
                                      ),
                                   ),

                                 ],
                               ),
                             ),
                           ),
                        );
                      });
                }
              }),
        )
      ],
    );
  }
}
