import 'package:flutter/material.dart';
import 'package:mastermind/sequenze.dart';

class Controller{
  final GlobalKey<SequenzeState> sequenzeStateKey;
  Controller({required this.sequenzeStateKey});

  int currentRow = 0;
  int currentCell = 0;

  void addColour(MaterialColor colore){
    sequenzeStateKey.currentState?.keysSequenzeState[currentRow].currentState?.keysColoriVuotiState[currentCell].currentState?.changeColour(colore);
    currentCell++;
    if(currentCell == 4){
      currentRow++;
      currentCell = 0;
    }
  }
}