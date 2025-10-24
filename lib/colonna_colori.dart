import 'package:flutter/material.dart';

import 'colore_da_scegliere.dart';

class ColonnaColori extends StatefulWidget{
  final List<MaterialColor> listaColori;
  const ColonnaColori({super.key, required this.listaColori});

  @override
  State<StatefulWidget> createState() => ColonnaColoriState();
}

class ColonnaColoriState extends State<ColonnaColori>{
  @override
  Widget build(BuildContext context) {
    List<ColoreDaScegliere> listaColoriDaScegliere = [];
    for(int i = 0; i < widget.listaColori.length; i++){
      listaColoriDaScegliere.add(ColoreDaScegliere(colore: widget.listaColori[i]));
    }

    return Column(
      children: listaColoriDaScegliere,
    );
  }
}