import 'package:flutter/material.dart';

class ColoreDaScegliere extends StatefulWidget{
  final MaterialColor colore;
  const ColoreDaScegliere({super.key, required this.colore});

  @override
  State<StatefulWidget> createState() => ColoreDaScegliereState();
}

class ColoreDaScegliereState extends State<ColoreDaScegliere>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 2),
            color: widget.colore
          ),
          child: ClipOval(
            child: Center(
              child: Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        )
    );
  }
}