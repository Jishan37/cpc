import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TeamOne extends StatefulWidget {
  const TeamOne({Key? key}) : super(key: key);

  @override
  _TeamOneState createState() => _TeamOneState();
}

class _TeamOneState extends State<TeamOne> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final isKeyboard=MediaQuery.of(context).viewInsets.bottom !=0;
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
      bottomNavigationBar: CurvedNavigationBar(
        index: 4,
        color: Colors.brown.shade100,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25,left: 23,right: 23),
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
              SizedBox(height: 20,),
              Image.asset('assets/12.PNG')
          ]
          ),
        ),
      ),
    );
  }
}
