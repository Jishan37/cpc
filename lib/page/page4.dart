import 'package:cpc/page/page5.dart';
import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              width: 500,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.only(top: 173),
                child: Center(
                  child: Text('All rights reserved by @diu_cpc',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 670,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              color: Colors.white
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 150),
                    height: 160,
                    width: 160,
                    child: Image.asset('assets/2.png'),
                  ),
                ),
                SizedBox(height: 160,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (cnx){
                      return PageFive();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                     border: Border.all(
                       color: Colors.orange,
                       width: 2,
                     ),
                     borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         bottomRight: Radius.circular(20)
                     )
                   ),
                    child: Center(child: Text('Log in',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54
                    ),
                    )),
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: Center(child: Text('Sing up',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
