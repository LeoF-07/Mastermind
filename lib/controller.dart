import 'package:flutter/material.dart';
import 'package:mastermind/sequenza_segreta.dart';
import 'package:mastermind/sequenze.dart';

class Controller{
  final GlobalKey<SequenzeState> sequenzeStateKey;
  final GlobalKey<SequenzaSegretaState> sequenzaSegretaStateKey;
  final List<MaterialColor> listaColoriDaIndovinare;
  Controller({required this.sequenzeStateKey, required this.sequenzaSegretaStateKey, required this.listaColoriDaIndovinare});

  int currentRow = 0;
  int currentCell = 0;

  List<MaterialColor> listaColori = [];

  void addColour(MaterialColor colore){
    if(currentCell > 3) return;
    sequenzeStateKey.currentState?.keysSequenzeState[currentRow].currentState?.keysColoriVuotiState[currentCell].currentState?.changeColour(colore);
    currentCell++;
    listaColori.add(colore);
  }

  int countCorrectColors(){
    int coloriUguali = 0;
    for(int i = 0; i < 4; i++){
      if(listaColoriDaIndovinare[i] == listaColori[i]) coloriUguali++;
    }
    return coloriUguali;
  }

  int countSemiColors(){
    int semiColors = 0;
    for(int i = 0; i < 4; i++){
      MaterialColor colore = listaColori[i];
      for(int j = 0; j < 4; j++){
        if(colore == listaColoriDaIndovinare[j] && i != j) semiColors++;
      }
    }
    return semiColors;
  }

  void checkCombination(){
    if(currentCell != 4) return;
    int correctColors = countCorrectColors();
    int semiColors = countSemiColors();

    sequenzeStateKey.currentState?.keysSequenzeState[currentRow].currentState?.keyIndicatoriState.currentState?.updateIndicatori(correctColors, semiColors);

    if(correctColors == 4){
      sequenzaSegretaStateKey.currentState?.makeVisible();
      return;
    }

    currentRow++;
    currentCell = 0;
    listaColori.clear();
  }

}