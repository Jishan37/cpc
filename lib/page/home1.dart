//import 'dart:html';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  _HomeOneState createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8,left: 23,right: 23),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '     Search for activities',
                        hintStyle: TextStyle(
                            fontSize: 14
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        suffixIcon: Icon(Icons.search,
                          color: Colors.black54,
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Divider(
                    thickness: 2,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 205),
                  child: Text('On going pograms',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  height: 185,
                  width: 410,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset('assets/img_1.png',
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20,),
                        Image.asset('assets/img.png',
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20,),
                        Image.asset('assets/5.PNG',
                        fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20,),
                        Image.asset('assets/14.jpg',
                        fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65,top: 2),
                  child: Row(
                    children: [
                      Container(
                        height: 56,
                        width: 66,
                        child: Card(
                          color: Colors.grey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 1),
                                child: Text('06',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27
                                  ),
                                ),
                              ),
                              Container(
                                child: Text('DAYS',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        height: 56,
                        width: 66,
                        child: Card(
                          color: Colors.grey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 1,right: 4),
                                child: Text('12',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27
                                  ),
                                ),
                              ),
                              Container(
                                child: Text('HOURS',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        height: 56,
                        width: 67,
                        child: Card(
                          color: Colors.grey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 1),
                                child: Text('00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27
                                  ),
                                ),
                              ),
                              Container(
                                child: Text('MINUTES',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  child: Center(
                    child: Icon(MdiIcons.dotsHorizontal,
                      size: 55,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 215),
                  child: Text('Incoming events',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w900,
                        fontSize: 17
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                    height: 160,
                    width: 400,
                    child: Image.asset('assets/6.PNG',
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 20,
                  child: Icon(MdiIcons.dotsHorizontal,
                    size: 55,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
