import 'package:flutter/material.dart';

import 'colore_vuoto.dart';
import 'indicatori.dart';

class Sequenza extends StatefulWidget{
  final int id;
  const Sequenza({super.key, required this.id});

  @override
  State<StatefulWidget> createState() => SequenzaState();
}

class SequenzaState extends State<Sequenza>{
  List<GlobalKey<ColoreVuotoState>> keysColoriVuotiState = [];
  GlobalKey<IndicatoriState> keyIndicatoriState = GlobalKey<IndicatoriState>();

  @override
  Widget build(BuildContext context) {
    List<ColoreVuoto>? listaColoriVuoti = [];
    for(int i = 0; i < 4; i++){
      keysColoriVuotiState.add(GlobalKey<ColoreVuotoState>());
      listaColoriVuoti.add(ColoreVuoto(key: keysColoriVuotiState[i], id: i));
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10), child: Text("${widget.id}")),
          Row(
            children: listaColoriVuoti,
          ),
          Indicatori(key: keyIndicatoriState)
      ]
    );
  }
}