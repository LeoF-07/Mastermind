import 'package:flutter/material.dart';

class Indicatore extends StatefulWidget{
  const Indicatore({super.key});

  @override
  State<StatefulWidget> createState() => IndicatoreState();
}

class IndicatoreState extends State<Indicatore>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: ClipOval(
            child: Center(
              child: Text('',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        )
    );
  }

}