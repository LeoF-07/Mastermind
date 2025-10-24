import 'package:flutter/material.dart';

class Indicatore extends StatefulWidget{
  final Color colore;
  const Indicatore({super.key, required this.colore});

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
            color: widget.colore,
          ),
          child: ClipOval()
        )
    );
  }

}