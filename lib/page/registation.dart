import 'package:flutter/material.dart';

class Registation extends StatefulWidget {
  const Registation({Key? key}) : super(key: key);

  @override
  _RegistationState createState() => _RegistationState();
}

class _RegistationState extends State<Registation> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isChecked==false?'UnRegistard':'Ragistard',
            style: TextStyle(
              fontSize: 45
            ),
            ),
            Checkbox(value: isChecked, onChanged: (bool ? value){
              setState(() {
                isChecked=value!;
                print(value);
              });
            })
          ],
        ),
      ),
    );
  }
}
