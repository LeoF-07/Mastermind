import 'package:flutter/material.dart';
import 'package:mastermind/sequenza.dart';

/// Sequenza, ossia i tentativi che l'utente ha per inserire una Sequenza e indovinare la SequenzaSegreta
class Sequenze extends StatefulWidget{
  final int numberOfSequences;
  const Sequenze({super.key, this.numberOfSequences = 8});

  @override
  State<StatefulWidget> createState() => SequenzeState();
}

class SequenzeState extends State<Sequenze>{
  List<Sequenza> sequenze = [];
  List<GlobalKey<SequenzaState>> keysSequenzeState = [];

  @override
  Widget build(BuildContext context) {
    for(int i = 0; i < widget.numberOfSequences; i++){
      keysSequenzeState.add(GlobalKey<SequenzaState>());
      sequenze.add(Sequenza(key: keysSequenzeState[i], id: i + 1));
    }

    return Column(children: sequenze);
  }
}