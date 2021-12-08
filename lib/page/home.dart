import 'package:cpc/page/home1.dart';
import 'package:cpc/page/noticication.dart';
import 'package:cpc/page/registation.dart';
import 'package:cpc/page/sattings.dart';
import 'package:cpc/page/team.dart';
import 'package:cpc/page/team2.dart';
import 'package:cpc/page/wings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex=2;
  final screen=[
    Settings(),
    Wings(),
    HomeOne(),
    Noticifations(),
    Team(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset('assets/2.png',
            fit: BoxFit.cover,
            height: 100,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange,
                width: 1
              ),
              image: DecorationImage(
                image: AssetImage('assets/4.jpeg')
              )
            ),
          ),
        ],
        leading: Builder(
          builder: (context){
            return IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(),
                icon: Icon(MdiIcons.segment,
                color: Colors.black87,
                  size: 38,
                )
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 235,
                    width: 400,
                    color: Colors.orange,
                    child: Align(
                      alignment: Alignment(-.9,-.3),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (cnx){
                              return Home();
                            }));
                          },
                          child: Icon(MdiIcons.share,
                          color: Colors.white,
                            size: 32,
                          ),
                        )
                    )
                  ),
                  Positioned(
                    top: 150,
                    left: 35,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.orange,
                          width: 3
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/4.jpeg')
                        )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 53,),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                      children: [
                        Text('Jishan ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                        ),
                        Text(' Ahmad',
                          style: TextStyle(
                              //fontWeight: FontWeight.w700,
                              fontSize: 30
                          ),
                        ),
                      ],
                    ),
              ),
              Positioned(
                child: Container(
                  child: Text('192-15-1037                                        ',
                    style: TextStyle(
                      //fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black54
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(MdiIcons.viewDashboardOutline,
                size: 31,
                  color: Colors.orange,
                ),
                title: Text('Wings',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black54
                ),
                ),
              ),
              SizedBox(height: 5,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (cnx){
                    return TeamOnes();
                  }));
                },
                child: ListTile(
                  leading: Icon(MdiIcons.accountMultiple,
                    size: 31,
                    color: Colors.orange,
                  ),
                  title: Text('Team',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              InkWell(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (cnx){
                    return Registation();
                  }));
                },
                child: ListTile(
                  leading: Icon(MdiIcons.humanEdit,
                    size: 31,
                    color: Colors.orange,
                  ),
                  title: Text('Registration',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ListTile(
                  leading: Icon(MdiIcons.logout,
                    size: 31,
                    color: Colors.orange,
                  ),
                  title: InkWell(
                    onTap: (){
                      SystemNavigator.pop();
                    },
                    child: Text('Logout',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black54
                    ),
                  ),
                  ),
                ),
              SizedBox(height: 110,),
              Text('About us\n'
                  'Rules & regulations                    ',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
              )
            ],
          ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: Colors.orange.shade100,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.orange,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        height: 52,
        onTap: (index)=>setState(()=>currentIndex=(index)),
        items: [
          Icon(MdiIcons.cog,
          size: 30,
            color: Colors.white,
          ),
          Icon(MdiIcons.bookOpenPageVariant,
          size: 30,
            color: Colors.white,
          ),
          Icon(MdiIcons.home,
          size: 30,
            color: Colors.white,
          ),
          Icon(MdiIcons.bellOutline,
          size: 30,
            color: Colors.white,
          ),
          Icon(MdiIcons.accountMultiple,
          size: 30,
            color: Colors.white,
          ),
        ],
      ),
      body: screen[currentIndex],
    );
  }
}
