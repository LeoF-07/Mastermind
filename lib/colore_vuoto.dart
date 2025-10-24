import 'package:flutter/material.dart';

class ColoreVuoto extends StatefulWidget{
  final int id;
  const ColoreVuoto({super.key, required this.id});

  @override
  State<StatefulWidget> createState() => ColoreVuotoState();
}

class ColoreVuotoState extends State<ColoreVuoto>{
  Color colore = Colors.transparent;

  void changeColour(MaterialColor colore){
    setState(() {
      this.colore = colore;
    });
  }

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
            color: colore,
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