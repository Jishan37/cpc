import 'package:cpc/page/team1.dart';
import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45,left: 25,right: 25),
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  height: 45,
                  child: Row(
                    children: [
                      Text(' MEET',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            color: Colors.black
                        ),
                      ),
                      Text(' The TEAM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.orange
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Divider(
                    thickness: 2,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 30,),
                Text('TRAM 2021',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
                ),
                SizedBox(height: 25,),
                Text('TRAM 2020',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    color: Colors.black54
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(left: 50,right: 50),
                  child: Divider(
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 22,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (cnx){
                      return TeamOne();
                    }));
                  },
                  child: Text('TRAM 2019',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.orange
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Container(
                  margin: EdgeInsets.only(left: 50,right: 50),
                  child: Divider(
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 25,),
                Text('TRAM 2018',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),
                ),
                SizedBox(height: 28,),
                Text('TRAM 2017',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),
                ),
                SizedBox(height: 28,),
                Text('TRAM 2016',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),
                ),
                SizedBox(height: 28,),
                Text('TRAM 2015',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
