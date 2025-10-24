import 'package:flutter/material.dart';
import 'package:mastermind/sequenza.dart';

class Sequenze extends StatefulWidget{
  final int numberOfSequences;
  const Sequenze({super.key, this.numberOfSequences = 8});

  @override
  State<StatefulWidget> createState() => SequenzeState();
}

class SequenzeState extends State<Sequenze>{

  @override
  Widget build(BuildContext context) {
    List<Sequenza> sequenze = [];
    for(int i = 0; i < widget.numberOfSequences; i++){
      sequenze.add(Sequenza(id: i + 1));
    }

    return Column(children: sequenze);
  }
}