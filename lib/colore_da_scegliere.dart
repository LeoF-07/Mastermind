import 'package:flutter/material.dart';

import 'controller.dart';

/// ColoreDaScegliere dall'utente contenuto nella ColonnaColori
class ColoreDaScegliere extends StatefulWidget{
  final Controller controller;
  final MaterialColor colore;
  const ColoreDaScegliere({super.key, required this.colore, required this.controller});

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
          ),
          child: ClipOval( // Rende circolare il child del container
            child: RawMaterialButton(
              onPressed: () => widget.controller.addColour(widget.colore),
              fillColor: widget.colore,
              elevation: 4,
            ),
          ),
        )
    );
  }
}