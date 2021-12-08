import 'package:cpc/page/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageFive extends StatefulWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,            //pixlproblem slove
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        clipBehavior: Clip.none,
        //alignment: Alignment.center,
        children: [
          Container(
            height: 250,
            width: 500,
            color: Colors.orange,
          ),
          Align(
            alignment: Alignment(0,1.4),
            child: Container(
                height: 650,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 7),
                        height: 110,
                        width: 110,
                        child: Image.asset('assets/2.png'),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 44,
                      width: 270,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '             Student ID',
                          hintStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                        height: 44,
                        width: 270,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '             Password',
                              hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                              )
                          ),
                        )
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25,left: 98),
                        child: Row(
                          children: [
                            Text('Remember username ',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            ),
                            Icon(MdiIcons.toggleSwitch,
                              color: Colors.orange,
                              size: 28,
                            )
                          ],
                        ),

                      ),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context){
                          return Home();
                        }));
                      },
                      child: Container(
                        height: 45,
                        width: 145,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        child: Center(child: Text('Log in',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )),
                      ),
                    ),
                    SizedBox(height: 190),
                    Text('Forgot password?',
                    style: TextStyle(
                      color: Colors.black54
                    ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
