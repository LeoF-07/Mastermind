import 'package:flutter/material.dart';

import 'colore_ignoto.dart';

class SequenzaSegreta extends StatefulWidget{
  const SequenzaSegreta({super.key});

  @override
  State<StatefulWidget> createState() => SequenzaSegretaState();
}

class SequenzaSegretaState extends State<SequenzaSegreta>{

  @override
  Widget build(BuildContext context) {
    List<ColoreIgnoto>? listaColoriIgnoti = [];
    for(int i = 0; i < 4; i++){
      listaColoriIgnoti.add(ColoreIgnoto(id: i));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: listaColoriIgnoti
    );
  }
}