import 'package:flutter/material.dart';

class Wings extends StatefulWidget {
  const Wings({Key? key}) : super(key: key);

  @override
  _WingsState createState() => _WingsState();
}

class _WingsState extends State<Wings> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 23,right: 23),
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
              SizedBox(height: 40,),
              Container(
                height: 440,
                width: 400,
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(

                                              image: AssetImage('assets/7.PNG')
                                            ),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                          border: Border.all(
                                            color: Colors.orange,
                                            width: 3
                                          )
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 160,left: 14),
                                            child: Text('ACM Task Force',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            SizedBox(width: 25,),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(

                                                image: AssetImage('assets/8.PNG')
                                            ),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.orange,
                                                width: 3
                                            )
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 160,left: 25),
                                            child: Text('Development',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 23,),
                    Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                                image: AssetImage('assets/9.PNG',)
                                            ),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.orange,
                                                width: 3
                                            )
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 160,left:32),
                                            child: Text('Research &\n    Journal',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            SizedBox(width: 25,),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                                image: AssetImage('assets/10.PNG')
                                            ),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.orange,
                                                width: 3
                                            )
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                            margin: EdgeInsets.only(top: 148,left: 28),
                                            child: Text('Job, Carrier &\n     Industry\nColleboration',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
