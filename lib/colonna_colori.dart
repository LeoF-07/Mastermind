import 'package:flutter/material.dart';

import 'colore_da_scegliere.dart';
import 'controller.dart';

class ColonnaColori extends StatefulWidget{
  final List<MaterialColor> listaColori;
  final Controller controller;
  const ColonnaColori({super.key, required this.listaColori, required this.controller});

  @override
  State<StatefulWidget> createState() => ColonnaColoriState();
}

class ColonnaColoriState extends State<ColonnaColori>{
  @override
  Widget build(BuildContext context) {
    List<ColoreDaScegliere> listaColoriDaScegliere = [];
    for(int i = 0; i < widget.listaColori.length; i++){
      listaColoriDaScegliere.add(ColoreDaScegliere(colore: widget.listaColori[i], controller: widget.controller));
    }

    return Column(
      children: listaColoriDaScegliere,
    );
  }
}