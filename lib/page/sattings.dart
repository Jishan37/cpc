import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 250,left: 120),
                  child: Row(
                    children: [
                      Icon(MdiIcons.eye,
                      size: 33,
                      ),
                      Text(' View Profile',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500
                      ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 120),
                  child: Row(
                    children: [
                      Icon(MdiIcons.pencil,
                        size: 33,
                      ),
                      Text(' Edit Profile',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
