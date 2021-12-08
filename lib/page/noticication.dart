import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Noticifations extends StatefulWidget {
  const Noticifations({Key? key}) : super(key: key);

  @override
  _NoticifationsState createState() => _NoticifationsState();
}

class _NoticifationsState extends State<Noticifations> {
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 100,),
              Text('No notification yet',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                    color: Colors.black54
                ),
              ),
              SizedBox(height: 30),
              Icon(MdiIcons.bellOutline,
              size: 90,
                color: Colors.black54,
              )
          ]
          ),
        ),
      ),
    );
  }
}
