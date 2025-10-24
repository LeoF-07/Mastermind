import 'package:flutter/material.dart';

import 'colore_ignoto.dart';

class SequenzaSegreta extends StatefulWidget{
  final List<MaterialColor> listaColoriDaIndovinare;
  const SequenzaSegreta({super.key, required this.listaColoriDaIndovinare});

  @override
  State<StatefulWidget> createState() => SequenzaSegretaState();
}

class SequenzaSegretaState extends State<SequenzaSegreta>{

  bool visible = false;

  void makeVisible(){
    setState((){
      visible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ColoreIgnoto>? listaColoriIgnoti = [];
    for(int i = 0; i < 4; i++){
      listaColoriIgnoti.add(ColoreIgnoto(colore: widget.listaColoriDaIndovinare[i], visible: visible));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: listaColoriIgnoti
    );
  }
}